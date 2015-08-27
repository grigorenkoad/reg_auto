class AddAvatarToMachine < ActiveRecord::Migration
  def change
    add_column :machines, :avatar, :string
  end
end
