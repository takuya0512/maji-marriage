class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.references :seating, null: false, foreign_key: true
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :name4
      t.string :name5
      t.string :name6
      t.string :name7
      t.string :name8
      t.string :name9
      t.string :name10
      t.string :name11
      t.string :name12
      t.string :name13
      t.string :name14
      t.string :name15
      t.string :name16
      t.string :name17
      t.string :name18
      t.string :name19
      t.string :name20
      t.string :name21
      t.string :name22
      t.string :name23
      t.string :name24
      t.string :name25
      t.string :name26
      t.string :name27
      t.string :name28
      t.string :name29
      t.string :name30
      t.string :name31
      t.string :name32
      t.string :name33
      t.string :name34
      t.string :name35
      t.string :name36
      t.string :name37
      t.string :name38
      t.string :name39
      t.string :name40
      t.string :name41
      t.string :name42
      t.string :name43
      t.string :name44
      t.string :name45
      t.string :name46
      t.string :name47
      t.string :name48
      t.string :name49
      t.string :name50
      t.string :name51
      t.string :name52
      t.string :name53
      t.string :name54
      t.string :name55
      t.string :name56
      t.string :name57
      t.string :name58
      t.string :name59
      t.string :name60
      t.string :name61
      t.string :name62
      t.string :name63
      t.string :name64
      t.string :name65
      t.string :name66
      t.string :name67
      t.string :name68
      t.string :name69
      t.string :name70
      t.string :name71
      t.string :name72

      t.timestamps
    end
  end
end
