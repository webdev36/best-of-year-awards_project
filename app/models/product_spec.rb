class ProductSpec < ActiveRecord::Base
  belongs_to :submission
  attr_accessible :introduction_date
end
