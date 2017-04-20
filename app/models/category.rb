class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :products
  validates :name ,uniqueness: true
end
