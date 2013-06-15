# == Schema Information
#
# Table name: categories
#
#  id         	:integer          not null, primary key
#  name		   		:string
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
		@cat = Category.find_or_create_by_name(:name=>"Product", :description=>"Start a Product", :kind=>0, :sort_id=>0)
		@sub_cat = Category.find_or_create_by_name(:name=>"Product1", :description=>"Start a Product", :parent_id=>@cat.id, :kind=>0, :sort_id=>1)
	end

	it "should have many subcategories" do
		t=Category.reflect_on_association(:subcategories)
		t.macro.should == :has_many
	end

	it "should belongs_to parent category" do
		t=Category.reflect_on_association(:parent_category)
		t.macro.should == :belongs_to
	end

	it "should have many submissions" do
		t=Category.reflect_on_association(:submissions)
		t.macro.should == :has_many
	end

end
