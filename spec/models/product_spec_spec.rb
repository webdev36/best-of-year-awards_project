# == Schema Information
#
# Table name: product_specs
#
#  id           				:integer					not null,  primary key, auto_increment
#  submission_id  			:integer
#  manufacture_name			:string
#  manufacture_addr			:string
#  name  								:string
#  description  				:string
#  introduction_date    :date
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null




require 'spec_helper'

describe ProductSpec do
  it "should belongs_to submission" do		
		t=ProductSpec.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end

	it "should have one contact" do
		t=ProductSpec.reflect_on_association(:contact)
		t.macro.should == :has_one		
	end

	it "should have many pictures" do		
		t=ProductSpec.reflect_on_association(:pictures)
		t.macro.should == :has_many
	end
	
  it "should have fields" do
  	should respond_to(:submission_id)
  	should respond_to(:manufacture_name)
  	should respond_to(:manufacture_addr)
  	should respond_to(:name)
  	should respond_to(:description)
		should respond_to(:introduction_date)		
	end
end
