# == Schema Information
#
# Table name: user_sessions
#
#  id           				:integer					not null,  primary key, auto_increment
#  session_id  					:string
#  data       					:text
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null

require 'spec_helper'

describe UserSession do
  it "should have fields" do
		#should respond_to(:session_id)
		#should respond_to(:data)
	end
end
