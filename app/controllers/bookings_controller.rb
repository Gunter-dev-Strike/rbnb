class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    #get new.html.erb -> formulaire generant new instance de booking
  end

  def create
    # POST le formulaire est founris et alimente la base de donnée, params: uder_id, place_id, date
  end

private
#hidden field pourn le simple form
  def booking_params
    params.require(:booking).permit(:date, :place_id)
  end


end
