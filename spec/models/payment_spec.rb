# == Schema Information
#
# Table name: payments
#
#  id           		:integer					not null,  primary key, auto_increment
#  user_id  				:integer
#  order_id					:integer
#  transaction_id  	:string
#  refund_id			 	:string
#  price_subtotal		:string
#  price_tax       	:string
#  price_refund			:string
#  price_total 			:string
#  ccard_last4 			:string
#  status				  	:string
#  first_name				:string
#  last_name				:string
#  street_address		:string
#  city           	:string
#  region          	:string	
#  post_code            	:string
#  country        	:string
#  created_at 			:datetime         not null
#  updated_at 			:datetime         not null

require 'spec_helper'

describe Payment do
  it "should belongs_to user and order " do
		t=Payment.reflect_on_association(:user)
		t.macro.should == :belongs_to

		t=Payment.reflect_on_association(:order)
		t.macro.should == :belongs_to
	end
	it "should have fields" do
		should respond_to(:user_id)
		should respond_to(:order_id)
		should respond_to(:transaction_id)
		should respond_to(:refund_id)
		should respond_to(:price_subtotal)
		should respond_to(:price_tax)
		should respond_to(:price_refund)
		should respond_to(:price_total)
		should respond_to(:ccard_last4)
		should respond_to(:status)
		should respond_to(:first_name)
		should respond_to(:last_name)
		should respond_to(:street_address)
		should respond_to(:city)
		should respond_to(:region)
		should respond_to(:post_code)
		should respond_to(:country)
	end
end
