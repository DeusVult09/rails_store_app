# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
Product.find_or_create_by!(name: "T-shirt") do |p|
  p.description = "T-shirts are essential when it's hot outside"
  p.inventory_count = 33
end

Product.find_or_create_by!(name: "Shoes") do |p|
  p.description = "Shoes are cool"
  p.inventory_count = 1
end

Product.find_or_create_by!(name: "Denim") do |p|
  p.description = "The best creation of Americans"
  p.inventory_count = 4
end

Product.find_or_create_by!(name: "Pants") do |p|
  p.description = "Database fundamentals"
  p.inventory_count = 12
end

