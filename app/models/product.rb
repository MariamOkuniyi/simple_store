class Product < ApplicationRecord
  # Ensure every product has a title
  validates :title, presence: true

  # Ensure every product has a price
  validates :price, presence: true

  # Ensure every product has a stock quantity
  validates :stock_quantity, presence: true
end
