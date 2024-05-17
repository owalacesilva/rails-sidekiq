class CreateProducts < ActiveRecord::Migration[7.1]
  def up
    create_table :products do |t|
      t.timestamps null: false

      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: { to_table: :product_categories }
      t.references :supplier, null: false, foreign_key: true

      t.string :title, null: false
      t.string :description
      t.string :slug, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :quantity_in_stock, null: false
    end
  end

  def down
    drop_table :products
  end
end
