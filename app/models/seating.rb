class Seating < ApplicationRecord
  belongs_to :user
  has_one :guest
end
