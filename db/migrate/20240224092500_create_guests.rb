class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.references :seating, null: false, foreign_key: true

      t.timestamps
    end
  end
end