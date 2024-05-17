class CreateUsers < ActiveRecord::Migration[7.1]
  def up
    create_table :users do |t|
      t.timestamps

      t.string :first_name, null: false
      t.string :last_name, null: false
    end
  end

  def down
    drop_table :users
  end
end
