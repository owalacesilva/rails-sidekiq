class CreateSuppliers < ActiveRecord::Migration[7.1]
  def up
    create_table :suppliers do |t|
      t.timestamps null: false

      t.string :title, null: false
      t.string :description
    end
  end

  def down
    drop_table :suppliers
  end
end
