# == Schema Information
#
# Table name: contacts
#
#  id           		:integer					not null,  primary key, auto_increment
#  product_spec_id 	:integer
#  project_spec_id 	:integer
#  name							:string
#  title_position  	:string
#  email       			:string
#  phone          	:string
#  created_at 			:datetime         not null
#  updated_at 			:datetime         not null

class Contact < ActiveRecord::Base
  belongs_to :product_spec
  belongs_to :project_spec
  
  attr_accessible :name, :title_position, :email, :phone

end
