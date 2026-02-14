class CreateProductsAndSeed < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :inventory_count
      t.timestamps
    end

    # Seed products after table creation
    reversible do |dir|
      dir.up do
        Product.reset_column_information
        Product.create!(name: "T-shirt", description: "T-shirts are essential when it's hot outside", inventory_count: 33)
        Product.create!(name: "Shoes", description: "Shoes are cool", inventory_count: 1)
        Product.create!(name: "Denim", description: "The best creation of Americans", inventory_count: 4)
        Product.create!(name: "Pants", description: "Database fundamentals", inventory_count: 12)
      end
    end
  end
end
