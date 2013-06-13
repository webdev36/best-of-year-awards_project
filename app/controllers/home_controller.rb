class HomeController < ApplicationController  
  def index
  end

  def submission_landing  
  end

  def search_submissions
  end

	def resume_later
		@submission ||= current_submission
		@submission.attributes = params[:submission] unless params[:submission].nil?
		session[:submission_type] = session[:submission_id] = nil
		redirect_to :home_submission_landing and return
	end
end
