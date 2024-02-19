class InitialSetup < ApplicationRecord
  validates :table_count, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :guests_per_table, presence: true, inclusion: { in: 1..8 }
  validates :front_tables, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: :table_count }
end
