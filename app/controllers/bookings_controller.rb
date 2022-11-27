class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
    @selected_flight = Flight.find(params[:flight_id])
  end

  def create
  end
end