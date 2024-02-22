class CreateSeatings < ActiveRecord::Migration[7.0]
  def change
    create_table :seatings do |t|
      t.string :pattern, null: false  # 席次表のパターン（A、B、Cなど）
      t.integer :table_count, null: false  # テーブルの数
      t.integer :guest_count, null: false  # ゲストの総数
      t.date :date,           null: false  # 結婚式日付
      t.timestamps
    end
  end
end
