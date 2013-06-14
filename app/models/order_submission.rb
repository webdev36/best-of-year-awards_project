class OrderSubmission < ActiveRecord::Base
  belongs_to :order
  belongs_to :submission
  attr_accessible :submission_id, :order_id
end
