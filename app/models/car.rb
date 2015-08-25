class Car < Machine
  validates :brand, :doors_count, :amount_guggage, :fuel_type, :engine_capacity, presence: true
end
