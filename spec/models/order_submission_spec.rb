# == Schema Information
#
# Table name: order_submissions
#
#  id         								:integer          not null, primary key
#  order_id										:integer
#  submission_id							:integer
#  created_at 								:datetime         not null
#  updated_at 								:datetime         not null

require 'spec_helper'

describe OrderSubmission do
	it "should belongs_to order and submission" do		
		t=OrderSubmission.reflect_on_association(:order)
		t.macro.should == :belongs_to

		t=OrderSubmission.reflect_on_association(:submission)
		t.macro.should == :belongs_to
	end
	
  it "should have fields" do
		should respond_to(:order_id)
		should respond_to(:submission_id)
	end
end
