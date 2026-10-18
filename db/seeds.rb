# Load the CSV library to read product data
require "csv"

# Clear existing products and categories before importing
Product.destroy_all
Category.destroy_all

# Locate the CSV file inside the db folder
csv_file = Rails.root.join("db/products.csv")

# Read the contents of the CSV file
csv_data = File.read(csv_file)

# Parse the CSV data using the first row as column headers
products = CSV.parse(csv_data, headers: true)

# Loop through each product in the CSV file
products.each do |product|

  # Get the category name from the CSV
  category_name = product["category"]

  # Find the category or create it if it does not exist
  category = Category.find_or_create_by!(name: category_name)

  # Create a product associated with its category
  Product.create!(
    title: product["name"],
    description: product["description"],
    price: product["price"],
    stock_quantity: product["stock quantity"],
    category: category
  )
end

# Display the number of imported products and categories
puts "#{Product.count} products imported successfully!"
puts "#{Category.count} categories created successfully!"