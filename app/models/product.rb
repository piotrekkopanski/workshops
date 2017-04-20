class Product < ActiveRecord::Base
  attr_accessible :title, :description, :price, :category_id,:average_rating,:user_id
  
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates :price ,:presence => true
  validates :title ,:presence => true
  validates :description ,:presence => true
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }

end
