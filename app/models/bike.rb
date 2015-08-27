class Bike < Machine
  validates :max_speed, presence: true
  validates :max_speed, :numericality => {:less_than => 350}
end
