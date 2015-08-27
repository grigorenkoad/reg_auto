class Truck < Car
   validates :load_capacity, presence: true
   validates :load_capacity, :numericality => {:less_than => 10000}
end
