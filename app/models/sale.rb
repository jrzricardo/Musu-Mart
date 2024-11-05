class Sale < ApplicationRecord
  validates :timestamp, presence: true
  validates :quantity_sold, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
