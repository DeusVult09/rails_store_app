# config/initializers/seed_products.rb
if Rails.env.production? && Product.count.zero?
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
end
