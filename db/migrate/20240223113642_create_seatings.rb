class CreateSeatings < ActiveRecord::Migration[7.0]
  def change
    create_table :seatings do |t|
      t.string :pattern,       null: false
      t.string :table_code,    null: false
      t.string :position_code, null: false
      t.references :user,      null: false, foreign_key: true

      t.timestamps
    end
  end
end
