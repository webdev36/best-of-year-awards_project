# == Schema Information
#
# Table name: options
#
#  id         	:integer          not null, primary key
#  option_name	:string
#  option_value	:text
#  created_at 	:datetime         not null
#  updated_at 	:datetime         not null

require 'spec_helper'

describe Option do
  it "should have fields" do
		should respond_to(:option_name)
		should respond_to(:option_value)
	end
end
