class Car < Machine
  validates :amount_guggage, :doors_count, presence: true
  validates :amount_guggage, :doors_count, :length => { :maximum => 10}
  validates :amount_guggage, :numericality => {:greater_than => 1, :less_than => 11}
  validates :doors_count, :numericality => {:greater_than => 1, :less_than => 6}
end
