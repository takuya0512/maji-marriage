class SeatingGuest
  include ActiveModel::Model
  attr_accessor :pattern, :user_id, :name1, :name2, :name3, :name4, :name5, :name6, :name7, :name8, :name9, :name10, :name11, :name12, :name13, :name14, :name15, :name16, :name17, :name18, :name19, :name20, :name21, :name22, :name23, :name24, :name25, :name26, :name27, :name28, :name29, :name30, :name31, :name32, :name33, :name34, :name35, :name36, :name37, :name38, :name39, :name40, :name41, :name42, :name43, :name44, :name45, :name46, :name47, :name48, :name49, :name50, :name51, :name52, :name53, :name54, :name55, :name56, :name57, :name58, :name59, :name60, :name61, :name62, :name63, :name64, :name65, :name66, :name67, :name68, :name69, :name70, :name71, :name72

  with_options presence: true do
    validates :user_id
    validates :pattern
  end

  def save
    seating = Seating.create(pattern: pattern, user_id: user_id)
    Guest.create(name1: name1, name2: name2, name3: name3, name4: name4, name5: name5, name6: name6, name7: name7, name8: name8, name9: name9, name10: name10, name11: name11, name12: name12, name13: name13, name14: name14, name15: name15, name16: name16, name17: name17, name18: name18, name19: name19, name20: name20, name21: name21, name22: name22, name23: name23, name24: name24, name25: name25, name26: name26, name27: name27, name28: name28, name29: name29, name30: name30, name31: name31, name32: name32, name33: name33, name34: name34, name35: name35, name36: name36, name37: name37, name38: name38, name39: name39, name40: name40, name41: name41, name42: name42, name43: name43, name44: name44, name45: name45, name46: name46, name47: name47, name48: name48, name49: name49, name50: name50, name51: name51, name52: name52, name53: name53, name54: name54, name55: name55, name56: name56, name57: name57, name58: name58, name59: name59, name60: name60, name61: name61, name62: name62, name63: name63, name64: name64, name65: name65, name66: name66, name67: name67, name68: name68, name69: name69, name70: name70, name71: name71, name72: name72,
  seating_id: seating.id)
  end
end
