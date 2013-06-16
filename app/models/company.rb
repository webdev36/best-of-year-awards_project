# == Schema Information
#
# Table name: companies
#
#  id           	:integer					not null,  primary key, auto_increment
#  submission_id  :integer
#  name           :string
#  address1       :string
#  address2       :string
#  city           :string
#  state          :string	
#  zip            :string
#  country        :string
#  phone          :string
#  website        :string
#  created_at 	:datetime         not null
#  updated_at 	:datetime         not null

class Company < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :address1, :address2, :city, :country, :name, :phone, :state, :website, :zip, :submission_id

  validates :address1, :city, :name, :presence => true
end
