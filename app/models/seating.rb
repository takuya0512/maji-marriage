class Seating < ApplicationRecord
  has_many :guests
  
  with_options presence: true do
    validates :pattern, presence: true
    validates :table_count, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :guest_count, presence: true, numericality: { only_integer: true, greater_than: 0 }
  end
end
