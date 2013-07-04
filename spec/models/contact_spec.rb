# == Schema Information
#
# Table name: contacts
#
#  id           		:integer					not null,  primary key, auto_increment
#  product_spec_id  :integer
#  project_spec_id  :integer
#  name							:string
#  title_position  	:string
#  email       			:string
#  phone          	:string
#  created_at 			:datetime         not null
#  updated_at 			:datetime         not null

require 'spec_helper'

describe Contact do
	it "should belongs_to product_spec" do
		t=Contact.reflect_on_association(:product_spec)
		t.macro.should == :belongs_to
	end

	it "should belongs_to project_spec" do
		t=Contact.reflect_on_association(:project_spec)
		t.macro.should == :belongs_to
	end
  it "should have fields" do
		should respond_to(:product_spec_id)
		should respond_to(:project_spec_id)
		should respond_to(:name)
		should respond_to(:title_position)
		should respond_to(:email)
		should respond_to(:phone)
	end
end
