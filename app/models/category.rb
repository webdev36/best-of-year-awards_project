# == Schema Information
#
# Table name: categories
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  kind         :integer          not null    default value = 0     0 is project, 1 is product
#  sort_id      :integer          not null    default value = 99
#  parent_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Category < ActiveRecord::Base
  attr_accessible :description, :kind, :name, :sort_id, :parent_id

  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy, :order=>'sort_id ASC'
  belongs_to :parent_category, :class_name => "Category"

  has_many :submission_categories
  has_many :submissions, :through => :submission_categories

	def self.product_categories
		pd_cat=Category.find(:all, :conditions=>{:name=>"Product", :kind=>0, :parent_id=>nil}).first
		return pd_cat.subcategories
  end
  
  def self.project_categories
  	pj_cat=Category.find(:all, :conditions=>{:name=>"Project", :kind=>1, :parent_id=>nil}).first
  	return pj_cat.subcategories
  end
  
end
