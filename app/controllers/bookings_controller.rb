class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
    @selected_flight = Flight.find(params[:flight_id])
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      @selected_flight = Flight.find(params[:flight_id])
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
