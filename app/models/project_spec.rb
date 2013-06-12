class ProjectSpec < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :additional_designers, :architect, :completion_date, :lead_designer, :market_segments, :other_resources, :othere_resources_title, :square_footage
end
