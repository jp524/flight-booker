class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    # @search_results = search_flights(flight_params)
  end

  private

  def flight_params
    params.permit(:departure_airport, :arrival_airport, :date, :passengers, :commit)
  end

  def search_flights(flight_params)
    # date = flight_params[:date]
    @flights.where("departure_airport_id = ?", flight_params[:departure_airport])
            .where("arrival_airport_id = ?", flight_params[:arrival_airport])
            # .where(start_datetime: (date))
  end
end
