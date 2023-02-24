class RacersController < ApplicationController

  def index 
    @racers = Racer.all
  end 

  def create 
    
  end

  def show
    @racer = Racer.find(params[:id]) 
  end 

  def update 
  end 

  def destroy 
    @racer = Racer.find(params[id])
    @racer.destroy
  end 

  private 

  def racer_params 
    params.require(:racer).permit(:id, :name, :born_at, :image_url)
  end 
end
