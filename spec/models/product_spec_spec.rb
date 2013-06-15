# == Schema Information
#
# Table name: product_specs
#
#  id           				:integer					not null,  primary key, auto_increment
#  submission_id  			:integer
#  introduction_date    :date
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null

require 'spec_helper'

describe ProductSpec do
  it "should belongs_to submission" do		
		t=ProductSpec.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end
	
  it "should have fields" do
  	should respond_to(:submission_id)
		should respond_to(:introduction_date)		
	end
end
