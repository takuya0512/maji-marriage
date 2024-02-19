class CreateInitialSetups < ActiveRecord::Migration[7.0]
  def change
    create_table :initial_setups do |t|
      t.integer :table_count
      t.integer :guests_per_table
      t.integer :front_tables

      t.timestamps
    end
  end
end
