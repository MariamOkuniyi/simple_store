class ProductsController < ApplicationController
  # Retrieve all products and their categories
  def index
    # Eager load categories to prevent N+1 database queries
    @products = Product.includes(:category).all
  end

  # Retrieve a single product using its ID
  def show
    @product = Product.find(params[:id])
  end
end


