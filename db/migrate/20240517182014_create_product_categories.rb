class CreateProductCategories < ActiveRecord::Migration[7.1]
  def up
    create_table :product_categories do |t|
      t.timestamps null: false

      t.string :title, null: false
      t.string :description
      t.string :slug, null: false
    end
  end

  def down
    drop_table :product_categories
  end
end
