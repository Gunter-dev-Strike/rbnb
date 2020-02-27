class BookingsController < ApplicationController



  def new
    @booking = Booking.new
    #get new.html.erb -> formulaire generant new instance de booking
  end

  def show
    @place = Booking.find(params[:id])
  end

  def create
    # POST le formulaire est founris et alimente la base de donnée, params: uder_id, place_id, date
    @booking = Booking.create!
  end

private
#hidden field pourn le simple form
  def booking_params
    params.require(:booking).permit(:date, :place_id)
  end
end
