class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  scope :distinct_departure_dates, -> { select(:departure_date).distinct }

  def departure_date_formatted
    departure_date.strftime('%b %d, %Y')
  end
end
