class User < ActiveRecord::Base
  attr_accessible :company_name, :email, :first_name, :last_name, :occupation_id, :password, :password_confirmation  
  acts_as_authentic do |c|
  	c.login_field = :email
  end

  has_many :submissions
  has_many :draft_submissions, :through=>:submissions, :source=>:user, :conditions =>['submissions.status=?', 'draft']
  has_many :completed_submissions, :through=>:submissions, :source=>:user, :conditions =>['submissions.status=?', 'complete']

  has_many :orders
  has_many :payments
  
  def fullname
  	# "#{self.last_name} #{self.first_name}"
  	[self.first_name, self.last_name].reject(&:blank?).join(" ")
  end
end
