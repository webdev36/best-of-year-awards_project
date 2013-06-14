class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  attr_accessible :ccard_last4, :city, :country, :first_name, :last_name, :post_code, :price_refund, 
  								:price_subtotal, :price_tax, :price_total, :refund_id, :region, :status, :street_address, 
  								:transaction_id

end
