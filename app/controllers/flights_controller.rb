class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @search_results = search_flights(flight_params) if params
  end

  private

  def flight_params
    params.permit(:departure_airport_id, :arrival_airport_id, :departure_date, :passengers, :commit)
  end

  def search_flights(flight_params)
    Flight.where(departure_airport_id: flight_params[:departure_airport_id])
          .where(arrival_airport_id: flight_params[:arrival_airport_id])
          .where(departure_date: flight_params[:departure_date])
  end
end
