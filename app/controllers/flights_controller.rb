class FlightsController < ApplicationController
  def index
    @flights = Flight.all.includes(:departure_airport, :arrival_airport)
    @departure_airports = []
    @arrival_airports = []
    @departure_dates = []
    @flights.each do |flight|
      @departure_airports << flight.departure_airport
      @arrival_airports << flight.arrival_airport
      @departure_dates << format_date(flight.start_datetime)
    end
    @search_results = search_flights(flight_params)
  end

  private

  def format_date(datetime)
    [datetime.strftime("%b %d, %Y"), datetime.beginning_of_day]
  end

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
