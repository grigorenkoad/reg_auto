class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find_by(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def update
    @bike = Bike.find_by(params[:id])
    if @bike.update(bike_params)
      redirect_to(machines_path)
    else
      render action: 'new'
    end
  end

  def create
    @bike = Bike.create(bike_params)
    if @bike.save 
      redirect_to(machines_path)
    else
      render action: 'new'
    end
  end

  def bike_params
    params.require(:bike).permit(:brand, :max_speed, :fuel_type, :engine_capacity, :type)
  end
end
