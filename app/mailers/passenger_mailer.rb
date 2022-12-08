class PassengerMailer < ApplicationMailer
  default from: 'flightbooker@test.com'

  def confirmation_email
    @booking = params[:booking]
    @flight = @booking.flight
    @booking.passengers.each do |passenger|
      mail(to: passenger.email, subject: 'Booking Information')
    end
  end
end
