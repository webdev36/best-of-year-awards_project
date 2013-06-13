class SubmissionCategory < ActiveRecord::Base
  belongs_to :submission
  belongs_to :category
  attr_accessible :submission_id, :category_id
end
