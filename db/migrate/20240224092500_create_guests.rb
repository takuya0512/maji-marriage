class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.references :seating, null: false, foreign_key: true
      (1..72).each do |n|
        t.string "name#{n}"
      end

      t.timestamps
    end
  end
end
