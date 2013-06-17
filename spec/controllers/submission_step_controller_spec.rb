require 'spec_helper'

describe SubmissionStepController do
   
	before(:each) do
		@valid_user = User.first
		@valid_user = FactoryGirl.create(:user) unless @valid_user		
		activate_authlogic
		sign_in(@valid_user)
	end
=begin
	describe "GET 'agree_terms'" do
    it "returns http success" do
      get '/submission_step'
      response.should be_success
    end
  end
=end  
end
