# == Schema Information
#
# Table name: contacts
#
#  id           		:integer					not null,  primary key, auto_increment
#  submission_id  	:integer
#  job_title				:string
#  first_name	    	:string
#  last_name      	:string
#  email       			:string
#  company        	:string
#  phone          	:string
#  street_address1  :string
#  street_address2  :string
#  city           	:string
#  state          	:string	
#  zip            	:string
#  country        	:string
#  fax            	:string
#  created_at 			:datetime         not null
#  updated_at 			:datetime         not null

class Contact < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :city, :company, :country, :email, :fax, :first_name, :job_title, :last_name, :phone, :state, :street_address1, :street_address2, :zip, :submission_id

  validates :company, :country, :email, :first_name, :job_title, :last_name, :phone, :state, :presence => true
end
