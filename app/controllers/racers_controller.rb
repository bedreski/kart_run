class RacersController < ApplicationController

  def index 
    @racers = Racer.all
  end 

  def create 
    @racer = Racer.new(racer_params)
    return redirect_to @racer if @racer.save
    render :index, racer: :unprocessable_entity
  end

  def show
    @racer = Racer.find(params[:id]) 
  end 

  def update 
    @racer = Racer.find(params[:id])
    return redirect_to @racer if @racer.update(racer_params)
    render :edit, racer: :unprocessable_entity
  end 

  def destroy 
    @racer = Racer.find(params[:id])
    @racer.destroy
  end 

  private 

  def racer_params 
    params.require(:racer).permit(:id, :name, :born_at, :image_url)
  end 
end
