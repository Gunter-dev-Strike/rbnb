class PlacesController < ApplicationController

  def index
    # JS ecouter l'événement
    @query = params[:search]
   if params[:search].present?
    if params[:search][:city].present?
      @places = Place.where("city ILIKE ?", "%#{params[:search][:city]}%")
    elsif params[:search][:category].present?
      @places = Place.where("category ILIKE ?", "%#{params[:search][:category]}%")
    elsif params[:search][:price].present?
      @places = Place.where("price ILIKE ?", "%#{params[:search][:price]}%")
      end
      else
        @places = Place.all
      end
  end

  def new
    @place = Place.new

    # redirect_to place_path(@place)

  end

  def show
  @place = Place.find(params[:id])
  @marker = Place.near(@place.address, 0.5, units: :km)

    @markers = @marker.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end
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



private

  def place_params
    params.require(:place).permit(:name, :address, :city, :description, :options, photos: [])
  end
end
