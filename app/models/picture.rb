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

class Picture < ActiveRecord::Base
  belongs_to :imageable, :polymorphic=>true
	attr_accessible :caption, :photographer, :photographer_email, :image

  has_attached_file :image, :styles => { :thumb => "80x80>", :small => "150x150>", :medium => "250x250>", :large => "350x350>" },
                    :url  => "/assets/pictures/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/pictures/:style/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 6.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/gif', 'image/png', 'image/tip']
end
