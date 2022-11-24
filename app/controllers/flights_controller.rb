class FlightsController < ApplicationController
  def index
    @flights = Flight.all.includes(:departure_airport, :arrival_airport)
    @departure_airports = []
    @arrival_airports = []
    @departure_dates = []
    @flights.each do |flight|
      @departure_airports << flight.departure_airport
      @arrival_airports << flight.arrival_airport
      @departure_dates << flight.start_datetime.strftime("%b %d, %Y")
    end
  end
end
