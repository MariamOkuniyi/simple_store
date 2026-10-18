# Load the Faker gem to generate sample product data
require "faker"

# Clear existing products to prevent duplicates when reseeding
Product.destroy_all

# Generate 676 fake products
676.times do
  Product.create!(
    # Generate a random product title
    title: Faker::Commerce.product_name,

    # Generate a random product price
    price: Faker::Commerce.price(range: 1.0..500.0),

    # Generate a random stock quantity between 1 and 100
    stock_quantity: Faker::Number.between(from: 1, to: 100)
  )
end

# Display the total number of products created
puts "#{Product.count} products created successfully!"