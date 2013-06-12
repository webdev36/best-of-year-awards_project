class Picture < ActiveRecord::Base
  belongs_to :imageable, :polymorphic=>true

  has_attached_file :image, :styles => { :thumb => "80x80>", :small => "150x150>", :medium => "250x250>", :large => "350x350>" },
                    :url  => "/assets/pictures/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/pictures/:style/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 10.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/gif', 'image/png', 'image/tip']
end
