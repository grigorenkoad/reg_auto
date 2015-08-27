class Machine < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  validates :brand, :fuel_type, :engine_capacity, presence: true
  validates :brand, :fuel_type, :engine_capacity, :length => { :maximum => 10}
  validates :engine_capacity, :numericality => {:greater_than => 1, :less_than => 5}
end
