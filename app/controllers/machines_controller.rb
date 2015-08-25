class MachinesController < ApplicationController
  
  def index
  	@title = "List registered auto"
    @machines = Machine.all
  end
end
