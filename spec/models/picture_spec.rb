# == Schema Information
#
# Table name: pictures
#
#  id           				:integer					not null,  primary key, auto_increment
#  imageable_id  				:integer
#  imageable_type       :string
#  caption  						:string
#  photographer			 		:string
#  photographer_email		:string
#  image_file_name			:string
#  image_file_size			:integer
#  image_content_type 	:string
#  image_updated_at 		:datetime
#  created_at 					:datetime         not null
#  updated_at 					:datetime         not null

require 'spec_helper'

describe Picture do
  it "should belongs_to imageable " do
		t=Picture.reflect_on_association(:imageable)
		t.macro.should == :belongs_to
	end

	it "should have fields" do
		should respond_to(:imageable_id)
		should respond_to(:imageable_type)
		should respond_to(:caption)
		should respond_to(:photographer)
		should respond_to(:photographer_email)
		should respond_to(:image_file_name)
		should respond_to(:image_file_size)
		should respond_to(:image_content_type)
	end
end
