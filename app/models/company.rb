class Company < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :address1, :address2, :city, :country, :name, :phone, :state, :website, :zip, :submission_id

  validates :address1, :city, :name, :presence => true
end
