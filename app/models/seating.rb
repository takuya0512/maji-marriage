class Seating < ApplicationRecord
  belongs_to :user
  has_one :guest, dependent: :destroy

  validates :pattern, presence: true
end
