# == Schema Information
#
# Table name: project_specs
#
#  id           						:integer					not null,  primary key, auto_increment
#  submission_id  					:integer
#  market_segments   			 	:string
#  lead_designer    				:string
#  architect    						:string
#  additional_designers 		:string
#  other_resources    			:string
#  othere_resources_title   :string
#  square_footage    				:string
#  completion_date    			:string
#  created_at 							:datetime         not null
#  updated_at 							:datetime         not null

require 'spec_helper'

describe ProjectSpec do
   it "should belongs_to submission" do
		t=ProjectSpec.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end
	
  it "should have fields" do
  	should respond_to(:submission_id)
		should respond_to(:market_segments)
		should respond_to(:lead_designer)
		should respond_to(:architect)
		should respond_to(:additional_designers)
		should respond_to(:other_resources)
		should respond_to(:othere_resources_title)
		should respond_to(:square_footage)
		should respond_to(:completion_date)
	end
end
