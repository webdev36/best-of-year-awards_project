class SubmissionStepController < ApplicationController
	before_filter :require_user

	include Wicked::Wizard
	steps :agree_terms, :select_categories, :input_submissions, :confirm_submissions

	def show		
		case step		
		when :agree_terms		
			redirect_to :home_submission_landing and return if params[:type].nil? or !Submission::TYPE.include? params[:type]
			session[:submission_type] = params[:type]
			
			if session[:submission_type] == "project"
				@categories = Category::project_categories
			elsif session[:submission_type] == "product"
				@categories = Category::product_categories
			end
			
			if session[:submission_id].nil?
				@submission = current_user.submissions.build :title=>"Please input name"
				@submission.save
				session[:submission_id] = @submission.id
#			elsif current_submission && session[:submission_type] != current_submission.type
#				@submission = current_user.submissions.build :title=>"Please input name"
#				@submission.save
#				session[:submission_id] = @submission.id			
			else
				@submission = current_submission
			end


		when :select_categories			
			redirect_to :home_submission_landing and return unless current_submission 
			@submission ||= current_submission
			@submission.submission_categories.build if @submission.submission_categories.nil?
		when :input_submissions
			redirect_to :home_submission_landing and return unless current_submission 
			@submission ||= current_submission
			@submission.build_company if @submission.company.nil?
			@submission.pictures.build
			if session[:submission_type] == "product"				
				@submission.build_product_spec if @submission.product_spec.nil?				
			elsif session[:submission_type] == "project"				
				@submission.build_project_spec if @submission.project_spec.nil?			
			end
		when :confirm_submissions	
			@submission ||= current_submission
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
			@submission.attributes = params[:submission]
		end	
		
		render_wizard @submission
	end
	private
		def redirect_to_finish_wizard
			redirect_to root_url, notice: "Tanks you for create submission"
		end
end
