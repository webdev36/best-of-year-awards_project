# == Schema Information
#
# Table name: users
#
#  id         								:integer          not null, primary key
#  email											:integer
#  first_name									:string
#  last_name									:string
#  company_name								:string
#  occupation_id							:integer
#  crypted_password						:string
#  password_salt							:string
#  persistence_token					:string
#  login_count								:string
#  failed_login_count					:string
#  last_request_at						:datetime
#  current_login_at						:datetime
#  last_login_at							:datetime
#  current_login_ip						:string
#  last_login_ip							:string
#  created_at 								:datetime         not null
#  updated_at 								:datetime         not null

require 'spec_helper'

describe User do  
  it "should have many submissions, draft_submissions, completed_submissions" do
		t=User.reflect_on_association(:submissions)
		t.macro.should == :has_many

		t=User.reflect_on_association(:draft_submissions)
		t.macro.should == :has_many

		t=User.reflect_on_association(:completed_submissions)
		t.macro.should == :has_many
	end
	
	it "should have many orders, payments" do
		t=User.reflect_on_association(:orders)
		t.macro.should == :has_many

		t=User.reflect_on_association(:payments)
		t.macro.should == :has_many
	end

	it "should have fields" do
		should respond_to(:email)
		should respond_to(:first_name)
		should respond_to(:last_name)
		should respond_to(:company_name)
		should respond_to(:occupation_id)
	end
end
