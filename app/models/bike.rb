class Bike < Machine
  validates :brand, :max_speed, :fuel_type, :engine_capacity, presence: true
end
