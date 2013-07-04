# == Schema Information
#
# Table name: companies
#
#  id           		:integer					not null,  primary key, auto_increment
#  project_spec_id	:integer
#  name           	:string
#  title_position 	:string
#  address       		:string
#  city           	:string
#  state          	:string	
#  zip            	:string
#  email        		:string
#  phone          	:string
#  website        	:string
#  created_at 			:datetime         not null
#  updated_at 			:datetime         not null

class Company < ActiveRecord::Base
  belongs_to :project_spec
  attr_accessible :name, :title_position, :address, :city, :state, :zip, :email, :phone, :website  
end
