class Category < ApplicationRecord
  # One category can have many products
  has_many :products
end