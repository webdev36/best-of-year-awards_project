class SubmissionCategory < ActiveRecord::Base
  belongs_to :submission
  belongs_to :category
  # attr_accessible :title, :body
end
