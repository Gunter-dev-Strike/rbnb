class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place = Place.new

    # redirect_to place_path(@place)

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
    p "je suis la"
    p ENV['CLOUDINARY_URL']
    @place = Place.new(place_params)
    @place.owner = current_user
    @place.price = 30
    @place.category = 'industriel'


    @place.save
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

  def place_params
    params.require(:place).permit(:name, :address, :city, :description, :options, photos: [])
  end
end
