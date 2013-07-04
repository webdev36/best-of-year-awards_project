# == Schema Information
#
# Table name: product_specs
#
#  id           				:integer					not null,  primary key, auto_increment
#  submission_id  			:integer
#  manufacture_name  		:string
#  manufacture_addr			:string
#  name  								:string
#  description  				:string
#  introduction_date    :date
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null


class ProductSpec < ActiveRecord::Base
  attr_accessible :manufacture_name, :manufacture_addr, :name, :description, :introduction_date, 
  								:contact_attributes, :pictures_attributes
	
	belongs_to :submission
  has_one :contact, 										 :dependent => :destroy
  has_many :pictures, :as => :imageable, :dependent => :destroy
	
	accepts_nested_attributes_for :contact, 	:allow_destroy=>true, :reject_if => :all_blank
  accepts_nested_attributes_for :pictures, 	:allow_destroy=>true, :reject_if => :all_blank
end
