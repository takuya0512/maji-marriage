class SeatingGuest
  include ActiveModel::Model
  attr_accessor :pattern, :table_code, :position_code, :user_id, :name, :seating_id

  with_options presence: true do
    validates :user_id
    validates :pattern
  end

  def save
    seating = Seating.create(pattern:, user_id:)
    Guest.create(position_code:, table_code:, name:, seating_id: seating.id)
  end
end
