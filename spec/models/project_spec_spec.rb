# == Schema Information
#
# Table name: project_specs
#
#  id           						:integer					not null,  primary key, auto_increment
#  submission_id  					:integer
#  fir_name  				  		 	:string
#  fir_address    					:string
#  name   								 	:string
#  lead_designer    				:string
#  architect    						:string
#  team_members    					:string
#  description 							:string
#  completion_date    			:date
#  square_footage    				:string
#  primary_sources					:string
#  created_at 							:datetime         not null
#  updated_at 							:datetime         not null

require 'spec_helper'

describe ProjectSpec do
   it "should belongs_to submission" do
		t=ProjectSpec.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end
	it "should have one contact" do
		t=ProjectSpec.reflect_on_association(:contact)
		t.macro.should == :has_one		
	end

	it "should have many pictures" do		
		t=ProjectSpec.reflect_on_association(:pictures)
		t.macro.should == :has_many
	end
  it "should have fields" do
  	should respond_to(:submission_id)
		should respond_to(:firm_name)
		should respond_to(:firm_address)
		should respond_to(:name)
		should respond_to(:lead_designer)
		should respond_to(:architect)
		should respond_to(:team_members)
		should respond_to(:description)
		should respond_to(:completion_date)
		should respond_to(:square_footage)
		should respond_to(:primary_sources)		
	end
end
