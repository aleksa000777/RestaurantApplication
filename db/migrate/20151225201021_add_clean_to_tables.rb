class AddCleanToTables < ActiveRecord::Migration
  def change
    add_column :tables, :clean, :integer
  end
end
