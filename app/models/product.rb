class Product < ApplicationRecord
  include Sluggable

  belongs_to :user
  belongs_to :category, class_name: 'ProductCategory'
  belongs_to :supplier

  validates :title, presence: true
  validates :price, presence: true
  validates :quantity_in_stock, presence: true
end
