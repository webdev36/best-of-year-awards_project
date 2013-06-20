class HomeController < ApplicationController  
	before_filter :require_user, :only => [:submission_landing, :edit_submission]
	
  def index
  	#render :text => ENV['AUTHORIZE_LOGIN_ID'] and return
  end

  def submission_landing  
    @editing_submissions = current_user.editing_submissions
    @submited_submissions = current_user.whole_submissions
    @draft_submissions = current_user.draft_submissions
    @complete_submissions = current_user.completed_submissions    
  end

  def edit_submission
    submission_id = params[:id]
    redirect_to root_url and return unless submission_id
    @submission=Submission.find(submission_id)
    redirect_to root_url and return unless @submission and @submission.status=='editing'
    session[:submission_type] = @submission.type
    session[:submission_id] = @submission.id    
    if @submission.submission_categories.blank?
      redirect_to '/submission_step/select_categories'
    elsif @submission.submission_categories.present?
      redirect_to '/submission_step/input_submissions'
    else
      redirect_to submission_step_index_path.to_s+'?type='+@submission.type
    end
      
  end

  def search_submissions  	
  end

  def resume_later    
		@submission ||= current_submission    
		@submission.attributes = params[:submission]    
    @submission.save
    session[:submission_type] = session[:submission_id] = nil
		redirect_to :home_submission_landing and return
	end

  def vote
  end

  def event
  end

  def faq
  end

  def interior_design
  end
  
end
