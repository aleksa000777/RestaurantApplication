class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.text :comment
      t.boolean :active
      t.integer :food_id
      t.integer :party_id

      t.timestamps null: false
    end
  end
end
