require "spec_helper"

describe SubmissionStepController do
  describe "routing" do
    it "routes to #index" do
      get("/submission_step?type='project'").should route_to("submisson_step#agree_terms")
    end

    it "routes to #agree_terms" do
      get("/submission_step/agree_terms?type='project'?type='project'").should route_to("submisson_step#agree_terms")
    end

    it "routes to #select_categories" do
      get("/submission_step/select_categories").should route_to("submisson_step#select_categories")
    end

    it "routes to #input_submissions" do
      get("/submission_step/input_submissions").should route_to("submisson_step#input_submissions", :id => "1")
    end

    it "routes to #confirm_submissions" do
      get("/submission_step/confirm_submissions").should route_to("submisson_step#confirm_submissions", :id => "1")
    end
  end
end
