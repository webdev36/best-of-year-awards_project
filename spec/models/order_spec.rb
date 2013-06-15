# == Schema Information
#
# Table name: orders
#
#  id         								:integer          not null, primary key
#  user_id										:integer
#  balance_amount							:string
#  payment_option							:string
#  shipping_first_name				:string
#  shipping_last_name					:string
#  shipping_address						:string
#  shipping_optional_address	:string
#  shipping_city							:string
#  shipping_state							:string
#  shipping_zip_code					:string
#  shipping_country						:string
#  shipping_method						:string
#  email											:string
#  token_key									:string
#  created_at 								:datetime         not null
#  updated_at 								:datetime         not null


require 'spec_helper'

describe Order do

  it "should belongs_to user" do
		t=Order.reflect_on_association(:user)
		t.macro.should == :belongs_to
	end

	it "should have many submissions" do
		t=Order.reflect_on_association(:order_submissions)
		t.macro.should == :has_many
		t=Order.reflect_on_association(:submissions)
		t.macro.should == :has_many
	end

	it "should have one payment" do
		t=Order.reflect_on_association(:payment)
		t.macro.should == :has_one
	end

	it "should have fields" do
		should respond_to(:user_id)
		should respond_to(:balance_amount)
		should respond_to(:payment_option)
		should respond_to(:shipping_first_name)
		should respond_to(:shipping_last_name)
		should respond_to(:shipping_address)
		should respond_to(:shipping_optional_address)
		should respond_to(:shipping_city)
		should respond_to(:shipping_state)
		should respond_to(:shipping_zip_code)
		should respond_to(:shipping_country)
		should respond_to(:shipping_method)
		should respond_to(:email)
		should respond_to(:token_key)
	end
end
