# == Schema Information
#
# Table name: users
#
#  id                         :integer          not null, primary key
#  email                      :integer
#  first_name                 :string
#  last_name                  :string
#  company_name               :string
#  occupation                 :string
#  crypted_password           :string
#  password_salt              :string
#  persistence_token          :string
#  login_count                :string
#  failed_login_count         :string
#  last_request_at            :datetime
#  current_login_at           :datetime
#  last_login_at              :datetime
#  current_login_ip           :string
#  last_login_ip              :string
#  admin                      :boolean
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null

class User < ActiveRecord::Base
  attr_accessible :company_name, :email, :first_name, :last_name, :occupation, :password, :password_confirmation  

  acts_as_authentic do |c|
  	c.login_field = :email
  end
  before_save { |user| user.email = email.downcase }

  has_many :submissions
  has_many :editing_submissions, :class_name=>"Submission", :conditions =>['submissions.status=?', 'editing']
  has_many :whole_submissions, :class_name=>"Submission", :conditions =>['submissions.status=?', 'whole']
  has_many :draft_submissions, :class_name=>"Submission", :conditions =>['submissions.status=?', 'draft']
  has_many :completed_submissions, :class_name=>"Submission", :conditions =>['submissions.status=?', 'complete']


  has_many :product_submissions, :class_name=>"Submission", :conditions =>['submissions.status=? AND submissions.submission_type=?', 'whole', 'product']
  has_many :project_submissions, :class_name=>"Submission", :conditions =>['submissions.status=? AND submissions.submission_type=?', 'whole', 'project']
  
  has_many :orders
  has_many :payments
  
  validates :first_name, :last_name, presence: true, length: {maximum: 10}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  

  def fullname
    # "#{self.last_name} #{self.first_name}"
    [self.first_name, self.last_name].reject(&:blank?).join(" ")
  end

end
