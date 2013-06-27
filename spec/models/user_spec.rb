# == Schema Information
#
# Table name: users
#
#  id         								:integer          not null, primary key
#  email											:integer
#  first_name									:string
#  last_name									:string
#  company_name								:string
#  occupation					  			:integer
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

	before do
		@user = User.new(:email=>"test@mail.com", :first_name=>"fname", :last_name=>"lname", :password=>"123456789", :password_confirmation=>"123456789" )
	end
	
	subject {@user}

  it "should have many submissions, draft_submissions, completed_submissions" do
		t=User.reflect_on_association(:submissions)
		t.macro.should == :has_many

		t=User.reflect_on_association(:editing_submissions)
		t.macro.should == :has_many
	
		t=User.reflect_on_association(:whole_submissions)
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
		should respond_to(:occupation)
	end

	describe "when first_name and last_name is not present" do
		before do
			@user.first_name = ""
			@user.last_name = ""
		end
	end
	
	describe "when first_name and last_name is too long" do
		before do
			@user.first_name = "f"*11
			@user.last_name = "l"*11
			it { should_not be_valid}
		end
	end

	describe "when email is not present" do
		before { @user.email = ""}
		it {should_not be_valid}
	end

	describe "when email format is invalid" do
		it "should be invalid" do
			address = %w[user@foo,com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
			address.each do |invalid_address|				
				@user.email = invalid_address
				@user.should_not be_valid
			end
		end
	end
	
	describe "when email format is valid" do
		it "should be valid" do
			address = %w[user@foo.com A_US-ER@f.b.org first.lst@foo.jp a+b@baz.cn]
			address.each do |valid_address|				
				@user.email = valid_address
				@user.should be_valid
			end
		end
	end

	describe "when email address is already taken" do
		before do
				user_with_same_email = @user.dup
				user_with_same_email.email = @user.email.upcase
				user_with_same_email.save
		end		
		it { should_not be_valid}
	end


end
