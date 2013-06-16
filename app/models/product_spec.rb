# == Schema Information
#
# Table name: product_specs
#
#  id           				:integer					not null,  primary key, auto_increment
#  submission_id  			:integer
#  introduction_date    :date
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null

class ProductSpec < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :introduction_date
end
