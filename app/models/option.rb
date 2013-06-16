# == Schema Information
#
# Table name: options
#
#  id         	:integer          not null, primary key
#  option_name	:string
#  option_value	:text
#  created_at 	:datetime         not null
#  updated_at 	:datetime         not null

class Option < ActiveRecord::Base
  attr_accessible :option_name, :option_value
end
