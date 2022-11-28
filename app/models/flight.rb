class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings

  scope :distinct_departure_dates, -> { select(:departure_date).distinct }

  def departure_date_formatted
    departure_date.strftime('%b %d, %Y')
  end

  def departure_time_formatted
    departure_time.strftime('%I:%M %p %Z')
  end

  def arrival_time
    departure_time + duration * 60
    # duration given in minutes
  end

  def arrival_date_formatted
    arrival_time.strftime('%b %d, %Y')
  end

  def arrival_time_formatted
    arrival_time.strftime('%I:%M %p %Z')
  end

  def duration_formatted
    hours = duration / 60
    minutes = duration % 60
    "#{hours}h #{minutes}m"
  end
end
