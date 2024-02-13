class CreateSeatings < ActiveRecord::Migration[7.0]
  def change
    create_table :seatings do |t|
      t.string :seating_name, null: false
      t.timestamps
    end
  end
end
