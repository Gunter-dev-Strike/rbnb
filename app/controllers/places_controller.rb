class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
    redirect_to place_path(@place)
  end

  def show
  @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update(place_params)
  end

  def create
    @place = Place.new(place_params)
    @place.save
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end


private
  def place_params
    params.require(:place).permit(:category, :city, :price, :adress)
  end

end
