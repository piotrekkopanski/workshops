class Review < ActiveRecord::Base
  attr_accessible :content, :rating,:author
  belongs_to :product
  belongs_to :user
  validates :content ,:presence => true
  validates :rating ,:presence => true
  validates :user_id ,:presence => true
end
