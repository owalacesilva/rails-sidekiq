# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create a default admin user
admin = User.find_or_create_by!(email: 'admin@email.com') do |user|
  user.password = 'password'
  user.password_confirmation = 'password'
end

# Create a list product categories
['Electronics', 'Clothing', 'Books', 'Home & Garden', 'Health & Beauty', 'Toys', 'Sports', 'Automotive', 'Other'].each do |category_name|
  ProductCategory.find_or_create_by!(title: category_name, slug: category_name.parameterize)
end

# Create a list of suppliers
['Amazon', 'Walmart', 'Best Buy', 'Target', 'Home Depot', 'Lowe\'s', 'Costco', 'Walgreens'].each do |supplier_name|
  Supplier.find_or_create_by!(title: supplier_name)
end
