class Seating < ApplicationRecord
  belongs_to :user
  has_many :guests

  # validates :pattern, presence: true
  # validates :table_code, presence: true
  # validates :position_code, presence: true
end
