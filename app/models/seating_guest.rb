class SeatingGuest
  include ActiveModel::Model
  attr_accessor :pattern, :table_code, :position_code, :user_id, :name

  # with_options presence: true do
  #   validates :
  #   validates :
  #   validates :
  #   validates :
  #   validates :
  #   validates :
  #   validates :
  #   validates :
  # end

  def save
    seating = Seating.create(user_id:)
    Guest.create(name:, seating_id: seating.id)
  end
end
