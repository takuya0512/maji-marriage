class Seating < ApplicationRecord
  with_options presence: true do
    validates :seating_name
  end
end
