class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
    #get new.html.erb -> formulaire generant new instance de booking
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    # POST le formulaire est founris et alimente la base de donnée, params: uder_id, place_id, date
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    @booking.user = current_user
    @booking.save!
    redirect_to root_path
  end

private
#hidden field pourn le simple form
  def booking_params
    params.require(:booking).permit(:date, :message, :name)
  end
end
