class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find_by(params[:id])
  end

  def new
    @car = Car.new
  end

  def update
    @car = Car.find_by(params[:id])
    if @car.update(car_params) 
      redirect_to(machines_path)
    else
      render action: 'new'
    end
  end

  def create
    @car = Car.create(car_params)
    if @car.save 
      redirect_to(machines_path)
    else
      render action: 'new'
    end
  end

  def car_params
    params.require(:car).permit(:brand, :engine_capacity, :fuel_type, :doors_count, 
      :amount_guggage, :type)
  end
end
