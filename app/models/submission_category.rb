# == Schema Information
#
# Table name: submission_categories
#
#  id         								:integer          not null, primary key
#  category_id										:integer
#  submission_id							:integer
#  created_at 								:datetime         not null
#  updated_at 								:datetime         not null

class SubmissionCategory < ActiveRecord::Base
  belongs_to :submission
  belongs_to :category
  attr_accessible :submission_id, :category_id
end
