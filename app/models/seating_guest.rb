class SeatingGuest
  include ActiveModel::Model
  attr_accessor :pattern, :table_code, :position_code, :user_id, :name, :seating_id

  with_options presence: true do
    validates :user_id
    validates :pattern
  end

  def save
    seating = Seating.create(position_code: position_code, table_code: table_code, pattern: pattern, user_id: user_id)
    Guest.create(name: name, seating_id: seating.id)
  end
end
