class SeatingGuest
  include ActiveModel::Model
  
  NAME_ATTRIBUTES = (1..72).map { |n| "name#{n}" }
  attr_accessor :pattern, :user_id, *NAME_ATTRIBUTES

  with_options presence: true do
    validates :user_id
    validates :pattern
  end

  def save
    seating = Seating.create(pattern:, user_id:)
    Guest.create(name1:, name2:, name3:, name4:, name5:, name6:, name7:, name8:, name9:, name10:, name11:, name12:, name13:, name14:, name15:, name16:, name17:, name18:, name19:, name20:, name21:, name22:, name23:, name24:, name25:, name26:, name27:, name28:, name29:, name30:, name31:, name32:, name33:, name34:, name35:, name36:, name37:, name38:, name39:, name40:, name41:, name42:, name43:, name44:, name45:, name46:, name47:, name48:, name49:, name50:, name51:, name52:, name53:, name54:, name55:, name56:, name57:, name58:, name59:, name60:, name61:, name62:, name63:, name64:, name65:, name66:, name67:, name68:, name69:, name70:, name71:, name72:,
                 seating_id: seating.id)
  end
end
