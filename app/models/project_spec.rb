# == Schema Information
#
# Table name: project_specs
#
#  id           						:integer					not null,  primary key, auto_increment
#  submission_id  					:integer
#  market_segments   			 	:string
#  lead_designer    				:string
#  architect    						:string
#  additional_designers 		:string
#  other_resources    			:string
#  othere_resources_title   :string
#  square_footage    				:string
#  completion_date    			:string
#  created_at 							:datetime         not null
#  updated_at 							:datetime         not null

class ProjectSpec < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :additional_designers, :architect, :completion_date, :lead_designer, :market_segments, 
  								:other_resources, :othere_resources_title, :square_footage
end
