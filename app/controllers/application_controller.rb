class ApplicationController < ActionController::Base

  around_filter :catch_exceptions

	protect_from_forgery
	helper_method :current_user_session, :current_user, :get_option, :current_submission


  # App environment checks
  def dev?; Rails.env == 'development'; end
  def prod?; Rails.env == 'production'; end
  def stage?; Rails.env == 'staging'; end
  def test?; Rails.env == 'test'; end


	private

    # --- EXCEPTION HANDLING ----------------------------------------------------

    # Exception error handling
    def catch_exceptions
      yield
    rescue => exception
      raise exception if test? || dev?

      case exception.class
        when ActiveRecord::RecordNotFound
          render_not_found
        # when BestOfYearAwards::Unauthorized
        #   render_unauthorized
        # when BestOfYearAwards::ExpiredListing
        #   render_expired
        else
          notify_error_service(exception) rescue nil
          render_error
      end
    end

    # Render a 404 Not Found
    def render_not_found
      raise ActiveRecord::RecordNotFound if test? # TRACK AS RAISED ERROR
      render_error(:status => 404, :message => t('errors.not_found'))
    end

    # Render a 410 Expired Page
    def render_expired
      raise BestOfYearAwards::ExpiredListing if test?
      render_error(:status => 410, :message => t('errors.expired'))
    end

    # Render a 403 Unauthorized
    def render_unauthorized
      raise BestOfYearAwards::Unauthorized if test?
      render_error(:status => 403, :type => 'Unauthorized', :message => t('errors.unauthorized'))
    end

    # Render desired error page (500 Server Error by default)
    def render_error(*opts)
      raise ActiveRecord::RecordNotFound if test?
      opts = opts.extract_options!
      opts[:message] ||= t("errors.error")
      opts[:status] = 500 unless [400,403,404,422,429,500].include?(opts[:status].to_i)

      # TODO : TRACK ERROR STATS

      respond_to do |format|
        format.html { render :status => opts[:status], :file => "public/#{opts[:file] || opts[:status]}", :layout => false }
        format.json { render :status => opts[:status], :json => {:error => true, :type => opts[:type], :reason => opts[:message]}.to_json, :callback => params[:callback] }
        format.xml  { render :status => opts[:status], :xml => {:error => true, :type => opts[:type], :reason => opts[:message]}.to_xml(:dasherize => false, :root => 'block') }
        format.any  { render :status => opts[:status], :nothing => true }
      end
    end

    def notify_error_service(e)
      # Airbrake
      notify_airbrake(e)

      # Errplane
      # Errplane.transmit(e) rescue nil
    end



		def current_submission
			@current_submission ||= Submission.find_by_id(session[:submission_id]) unless session[:submission_id].nil?
		end
    
    def current_order
      @current_order ||= Order.find_by_id(session[:order_id]) unless session[:order_id].nil?
    end

		def get_option(opt_name)
			option = Option.find_by_option_name opt_name
			return option.option_value unless option.nil?
		end
		def current_user_session
			logger.debug "ApplicationController::current_user_session"
		 	return @current_user_session if defined?(@current_user_session)
			@current_user_session = UserSession.find
		end

    # Is a current user?
    def current_user?; return (!current_user.blank?); end

    # Eval if user is the current user
    def is_current_user?(u=nil); return (u === current_user); end

    # Reload current user information
    def reload_current_user; @current_user = User.find(current_user.id) if current_user?; end

		def current_user
			logger.debug "ApplicationController::current_user"
			return @current_user if defined?(@current_user)
			@current_user = current_user_session && current_user_session.user
		end

		def require_user
			logger.debug "ApplicationController::require_user"
			unless current_user
				store_location
				flash[:notice] = "You must be logged in to access this page."
				redirect_to login_url
				return false
			end
		end

		def require_no_user
			logger.debug "ApplicationController::require_no_user"
			if current_user
				flash[:notice] = "You must be logged out to access this page."
				redirect_to request.referrer || root_url
			return false
			end
		end

		def require_admin_user
			logger.debug "ApplicationController::require_admin_user"
			render_unauthorized unless current_user && current_user.admin?
		end

		def store_location
			session[:return_to] = request.url
		end

		def redirect_back_or_default(default=nil)
			redirect_to(session[:return_to] || default || root_url)
			session[:return_to] = nil
		end
end
