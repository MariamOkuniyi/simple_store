class ProductsController < ApplicationController
  # The index action retrieves all products from the database
  def index
    # Store all products in an instance variable for the view
    @products = Product.all
  end
end
