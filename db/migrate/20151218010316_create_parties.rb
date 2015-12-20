class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :nmofpeople
      t.boolean :pay_status
      t.decimal :bill
      t.string :mood
      t.integer :order_id
      t.integer :table_id

      t.timestamps null: false
    end
  end
end
