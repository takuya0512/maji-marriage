class Seating < ApplicationRecord
  belongs_to :user
  has_many :guests

  def guest_at(seating_id, table_code, position_code)
    guests.find_by(seating_id: seating_id, table_code: table_code, position_code: position_code)
  end
end
