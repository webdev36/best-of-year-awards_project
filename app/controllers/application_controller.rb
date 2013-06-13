class ApplicationController < ActionController::Base
	protect_from_forgery
	helper_method :current_user_session, :current_user, :get_option, :current_submission
 

	private
		
		def current_submission
			@current_submission ||= Submission.find_by_id(session[:submission_id]) unless session[:submission_id].nil?
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
 
		def current_user
			logger.debug "ApplicationController::current_user"
			return @current_user if defined?(@current_user)
			@current_user = current_user_session && current_user_session.user
		end
	 
		def require_user
			logger.debug "ApplicationController::require_user"
			unless current_user
				store_location
				flash[:notice] = "You must be logged in to access this page"
				redirect_to new_user_session_url
				return false
			end
		end
	 
		def require_no_user
			logger.debug "ApplicationController::require_no_user"
			if current_user
				store_location
				flash[:notice] = "You must be logged out to access this page"
				redirect_to account_url
			return false
			end
		end
 
		def store_location
			session[:return_to] = request.url
		end
	 
		def redirect_back_or_default(default)
			redirect_to(session[:return_to] || default)
			session[:return_to] = nil
		end
end
