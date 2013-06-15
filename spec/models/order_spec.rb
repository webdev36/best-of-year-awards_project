# == Schema Information
#
# Table name: orders
#
#  id         								:integer          not null, primary key
#  user_id										:integer
#  balance_amount							:string(255)
#  payment_option							:string(255)
#  shipping_first_name				:string(255)
#  shipping_last_name					:string(255)
#  shipping_address						:string(255)
#  shipping_optional_address	:string(255)
#  shipping_city							:string(255)
#  shipping_state							:string(255)
#  shipping_zip_code					:string(255)
#  shipping_country						:string(255)
#  shipping_method						:string(255)
#  email											:string(255)
#  token_key									:string(255)
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
