# == Schema Information
#
# Table name: submission_categories
#
#  id         								:integer          not null, primary key
#  category_id										:integer
#  submission_id							:integer
#  created_at 								:datetime         not null
#  updated_at 								:datetime         not null

require 'spec_helper'

describe SubmissionCategory do
  it "should belongs_to category and submission" do		
		t=SubmissionCategory.reflect_on_association(:submission)
		t.macro.should == :belongs_to

		t=SubmissionCategory.reflect_on_association(:category)
		t.macro.should == :belongs_to
	end
	
  it "should have fields" do
		should respond_to(:category_id)
		should respond_to(:submission_id)
	end
end
