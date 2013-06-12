class Contact < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :city, :company, :country, :email, :fax, :first_name, :job_title, :last_name, :phone, :state, :street_address1, :street_address2, :zip, :submission_id

  validates :company, :country, :email, :first_name, :job_title, :last_name, :phone, :state, :presence => true
end
