require 'spec_helper'

describe SubmissionStepController do
	user = FactoryGirl.create(:user)
  sign_in user
	let(:user){subject.current_user}
	
	describe "GET 'agree_terms'" do
    it "returns http success" do
      get 'agree_terms'
      response.should be_success
    end
  end
end
