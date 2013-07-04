class SubmissionStepController < ApplicationController
	before_filter :require_user

	include Wicked::Wizard
	steps :agree_terms, :select_categories, :input_submissions, :confirm_submissions

	def show		
		case step		
		when :agree_terms		
			redirect_to :home_submission_landing and return if params[:type].nil? or !Submission::TYPE.include? params[:type]
			session[:submission_type] = params[:type]
			
			if session[:submission_id].nil?
				@submission = current_user.submissions.build :title=>"Input #{session[:submission_type]}", :status => 'editing', :submission_type =>params[:type]
				@submission.save
				session[:submission_id] = @submission.id
#			elsif current_submission && session[:submission_type] != current_submission.type
#				@submission = current_user.submissions.build :title=>"Please input name"
#				@submission.save
#				session[:submission_id] = @submission.id			
			else
				@submission = current_submission
				if @submission.blank?
					@submission = current_user.submissions.build :title=>"Input #{session[:submission_type]} submission name", :status => 'editing', :submission_type =>params[:type]
					@submission.save
					session[:submission_id] = @submission.id
				end
			end
		when :select_categories			
			if session[:submission_type] == "project"
				@categories = Category::project_categories
			elsif session[:submission_type] == "product"
				@categories = Category::product_categories
			end

			redirect_to :home_submission_landing and return unless current_submission
			@submission ||= current_submission
			@submission.submission_categories.build if @submission.submission_categories.nil?
		when :input_submissions
			redirect_to :home_submission_landing and return unless current_submission 
			@submission ||= current_submission
			if session[:submission_type] == Submission::TYPE[1]
				product = @submission.product_spec.nil? ? @submission.build_product_spec : @submission.product_spec
				product.save
				product.build_contact if product.contact.nil?
				@submission = product
			elsif session[:submission_type] == Submission::TYPE[0]
				project = @submission.project_spec.nil? ? @submission.build_project_spec : @submission.project_spec
				project.save
				project.build_contact if project.contact.nil?
				project.build_company if project.company.nil?
				project.pictures.build
				@submission = project
			end
		when :confirm_submissions	
			redirect_to root_url and return unless current_submission
			@submission = current_submission
			#session[:submission_type] = session[:submission_id] = nil
			session[:submission_id] = nil
		end
		render_wizard
	end

	def update
		#render :text => params.inspect and return
		@submission = current_submission		
		case step		
		when :select_categories
			@submission.attributes = params[:submission]
		when :input_submissions			
			if session[:submission_type] == Submission::TYPE[1]
				@submission.status = "whole"
				product = @submission.product_spec				
				product.attributes = params[:product_spec]
				@submission.save
			elsif session[:submission_type] == Submission::TYPE[0]
				@submission.status = "whole"
				project = @submission.project_spec
				project.attributes = params[:project_spec]
				@submission.save
			end
		end	
		
		render_wizard @submission
	end
	private
		def redirect_to_finish_wizard
			redirect_to root_url, notice: "Tanks you for create submission"
		end
end
