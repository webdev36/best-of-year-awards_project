# == Schema Information
#
# Table name: categories
#
#  id         	:integer          not null, primary key
#  name		   		:string(255)
#  description	:text
#  kind		      :integer					not null		default value = 0			0 is project, 1 is product
#  sort_id	  	:integer					not null   	default value = 99
#  parent_id	  :integer
#  created_at 	:datetime         not null
#  updated_at 	:datetime         not null
#

require 'spec_helper'

describe Category do
	before do
		@category = Category.new(:name=>"Product")
		@sub_cat = Category.new(:name=>"SubProduct", :parent_id => @category.id)
	end

	it "should have many subcategories" do
		#should belongs_to :parent_category, :class_name => "Category"
		should_have_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy, :order=>'sort_id ASC'
	end
end
