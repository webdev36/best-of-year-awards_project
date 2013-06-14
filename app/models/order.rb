class Order < ActiveRecord::Base
  belongs_to :user
  attr_accessible :balance_amout, :email, :token_key, :payment_option, :shipping_address, :shipping_city, 
  								:shipping_country, :shipping_first_name, :shipping_last_name, :shipping_method, 
  								:shipping_optional_address, :shipping_state, :shipping_zip_code, 
                  :order_submissions_attributes, :payment_attributes

  has_many :order_submissions, :dependent => :destroy
  has_many :submissions, :through => :order_submissions
	has_one :payment

	accepts_nested_attributes_for :order_submissions, :allow_destroy=>true, :reject_if => proc{ |a| a['submission_id'] == '-1' }
  accepts_nested_attributes_for :payment, :allow_destroy=>true, :reject_if => :all_blank
  def do_pay
  end
end
