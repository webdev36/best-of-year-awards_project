# == Schema Information
#
# Table name: project_specs
#
#  id           						:integer					not null,  primary key, auto_increment
#  submission_id  					:integer
#  firm_name   		 					:string
#  firm_address    					:string
#  name   								 	:string
#  lead_designer    				:string
#  architect    						:string
#  team_members    					:text
#  description 							:text
#  completion_date    			:date
#  square_footage    				:text
#  primary_sources					:string
#  created_at 							:datetime         not null
#  updated_at 							:datetime         not null


class ProjectSpec < ActiveRecord::Base  
  attr_accessible :firm_name, :firm_address, :name, :lead_designer, :architect, :team_members, :description, 
  								:completion_date, :square_footage, :primary_sources, 
  								:contact_attributes, :company_attributes, :pictures_attributes
	
	belongs_to :submission
	
	has_one :contact,											 :dependent => :destroy
	has_one :company,											 :dependent => :destroy
	has_many :pictures, :as => :imageable, :dependent => :destroy

	accepts_nested_attributes_for :contact, 	:allow_destroy=>true, :reject_if => :all_blank
	accepts_nested_attributes_for :company, 	:allow_destroy=>true, :reject_if => :all_blank
  accepts_nested_attributes_for :pictures, 	:allow_destroy=>true, :reject_if => :all_blank

end
