class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.boolean :status
      t.string :shape
      t.string :location
      t.integer :party_id
      t.integer :server_id

      t.timestamps null: false
    end
  end
end
