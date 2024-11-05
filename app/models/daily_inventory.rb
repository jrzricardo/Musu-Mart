class DailyInventory < ApplicationRecord
  validates :date, presence: true, uniqueness: true
  validates :starting_inventory, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
