class ProductCategory < ApplicationRecord
  include Sluggable

  has_many :products

  validates :title, presence: true
end
