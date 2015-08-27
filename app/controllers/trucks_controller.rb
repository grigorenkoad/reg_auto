class TrucksController < ApplicationController
  def edit
    @truck = Machine.find(params[:id])
  end

  def new
    @truck = Truck.new
  end

  def update
    @truck = Truck.find(params[:id])
    if @truck.update(truck_params) 
      redirect_to(machines_path)
    else
      render action: 'new'
    end
  end

  def create
    @truck = Truck.create(truck_params)
    if @truck.save 
      redirect_to(machines_path)
    else
      render action: 'new'
    end
  end

  def truck_params
    params.require(:truck).permit(:brand, :engine_capacity, :fuel_type, :amount_guggage,
                                    :cabin_for_sleeping, :load_capacity, :type, :doors_count, :avatar)
  end
end
