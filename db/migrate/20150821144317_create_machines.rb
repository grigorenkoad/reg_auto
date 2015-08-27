class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :type
      t.integer :engine_capacity
      t.string :brand
      t.string :fuel_type
      t.integer :doors_count
      t.integer :amount_guggage
      t.integer :max_speed
      t.integer :load_capacity
      t.boolean :cabin_for_sleeping

      t.timestamps
    end
  end
end
