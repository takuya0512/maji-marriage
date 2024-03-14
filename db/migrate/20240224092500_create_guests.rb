class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :table_code
      t.string :position_code
      t.references :seating, null: false, foreign_key: true

      t.timestamps
    end
  end
end
