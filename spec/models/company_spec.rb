# == Schema Information
#
# Table name: companies
#
#  id           	:integer					not null,  primary key, auto_increment
#  submission_id  :integer
#  name           :string
#  address1       :string
#  address2       :string
#  city           :string
#  state          :string	
#  zip            :string
#  country        :string
#  phone          :string
#  website        :string
#  created_at 	:datetime         not null
#  updated_at 	:datetime         not null

require 'spec_helper'

describe Company do
  it "should belongs_to submission" do
		t=Company.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end  

	it "should have fields" do
		should respond_to(:submission_id)
		should respond_to(:name)
		should respond_to(:address1)
		should respond_to(:address2)
		should respond_to(:city)
		should respond_to(:state)
		should respond_to(:zip)
		should respond_to(:country)
		should respond_to(:phone)
		should respond_to(:website)
	end

end
