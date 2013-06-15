# == Schema Information
#
# Table name: contacts
#
#  id           		:integer					not null,  primary key, auto_increment
#  submission_id  	:integer
#  job_title				:string
#  first_name	    	:string
#  last_name      	:string
#  email       			:string
#  company        	:string
#  phone          	:string
#  street_address1  :string
#  street_address2  :string
#  city           	:string
#  state          	:string	
#  zip            	:string
#  country        	:string
#  fax            	:string
#  created_at 			:datetime         not null
#  updated_at 			:datetime         not null


require 'spec_helper'

describe Contact do
  it "should belongs_to submission" do
		t=Contact.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end

	it "should have fields" do
		should respond_to(:submission_id)
		should respond_to(:job_title)
		should respond_to(:first_name)
		should respond_to(:last_name)
		should respond_to(:email)
		should respond_to(:company)
		should respond_to(:phone)
		should respond_to(:street_address1)
		should respond_to(:street_address2)
		should respond_to(:city)
		should respond_to(:state)
		should respond_to(:zip)
		should respond_to(:country)
		should respond_to(:fax)
	end
end
