class Category < ActiveRecord::Base
  attr_accessible :description, :kind, :name, :sort_id

  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy, :order=>'sort_id ASC'
  belongs_to :parent_category, :class_name => "Category"

  has_many :submissions
end
