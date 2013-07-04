
# == Schema Information
#
# Table name: submissions
#
#  id           				:integer					not null,  primary key, auto_increment
#  title  							:string
#  description       		:text
#  status  							:string
#  active			 					:boolean
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null

require 'spec_helper'

describe Submission do
  it "should belongs_to user" do
		t=Submission.reflect_on_association(:user)
		t.macro.should == :belongs_to
	end
	
	it "should have many pictures, submissions, categories" do
		t=Submission.reflect_on_association(:submission_categories)
		t.macro.should == :has_many

		t=Submission.reflect_on_association(:categories)
		t.macro.should == :has_many

		t=Submission.reflect_on_association(:order_submission)
		t.macro.should == :has_many

		t=Submission.reflect_on_association(:orders)
		t.macro.should == :has_many
	end

	it "should have one product_spec and project_spec" do
		t=Submission.reflect_on_association(:product_spec)
		t.macro.should == :has_one
		
		t=Submission.reflect_on_association(:project_spec)
		t.macro.should == :has_one
	end
	
	it "should have fields" do
		should respond_to(:title)
		should respond_to(:description)
		should respond_to(:status)
		should respond_to(:submission_type)
		should respond_to(:active)
	end

end
