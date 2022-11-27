# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flight.delete_all
Airport.delete_all

Airport.create!([{ code: 'ATL', city: 'Atlanta' },
                 { code: 'PEK', city: 'Beijing' },
                 { code: 'LAX', city: 'Los Angeles' },
                 { code: 'DXB', city: 'Dubai' },
                 { code: 'HND', city: 'Tokyo' },
                 { code: 'ORD', city: 'Chicago' },
                 { code: 'LHR', city: 'London' },
                 { code: 'PVG', city: 'Shanghai' },
                 { code: 'CDG', city: 'Paris' },
                 { code: 'DFW', city: 'Dallas-Forth Worth' }])

Flight.create!(
  [{
    number: 'NK233',
    departure_airport_id: 1,
    arrival_airport_id: 10,
    departure_date: Date.new(2022, 12, 20),
    departure_time: Time.new(2022, 12, 20, 8, 5, 0, '-05:00'),
    duration: 149
  }, {
    number: 'NH125',
    departure_airport_id: 3,
    arrival_airport_id: 5,
    departure_date: Date.new(2022, 12, 21),
    departure_time: Time.new(2022, 12, 21, 15, 45, 0, '-08:00'),
    duration: 745
  }, {
    number: 'CA1835',
    departure_airport_id: 2,
    arrival_airport_id: 8,
    departure_date: Date.new(2022, 12, 22),
    departure_time: Time.new(2022, 12, 22, 8, 0, 0, '+06:00'),
    duration: 135
  }, {
    number: 'AF659',
    departure_airport_id: 4,
    arrival_airport_id: 9,
    departure_date: Date.new(2022, 12, 23),
    departure_time: Time.new(2022, 12, 23, 11, 10, 0, '+04:00'),
    duration: 455
  }, {
    number: 'BA294',
    departure_airport_id: 6,
    arrival_airport_id: 7,
    departure_date: Date.new(2022, 12, 24),
    departure_time: Time.new(2022, 12, 24, 17, 0, 0, '-06:00'),
    duration: 460
  }, {
    number: 'NK1025',
    departure_airport_id: 10,
    arrival_airport_id: 1,
    departure_date: Date.new(2022, 12, 25),
    departure_time: Time.new(2022, 12, 25, 18, 30, 0, '-06:00'),
    duration: 127
  }, {
    number: 'NH126',
    departure_airport_id: 5,
    arrival_airport_id: 3,
    departure_date: Date.new(2022, 12, 26),
    departure_time: Time.new(2022, 12, 26, 21, 5, 0, '+09:00'),
    duration: 600
  }, {
    number: 'CA1884',
    departure_airport_id: 8, arrival_airport_id: 2,
    departure_date: Date.new(2022, 12, 26),
    departure_time: Time.new(2022, 12, 26, 16, 15, 0, '+08:00'),
    duration: 145
  }, {
    number: 'AF662',
    departure_airport_id: 9,
    arrival_airport_id: 4, departure_date: Date.new(2022, 12, 27),
    departure_time: Time.new(2022, 12, 27, 13, 35, 0, '+01:00'),
    duration: 705
  }, {
    number: 'BA295',
    departure_airport_id: 7,
    arrival_airport_id: 6,
    departure_date: Date.new(2022, 12, 28),
    departure_time: Time.new(2022, 12, 28, 11, 20, 0, '+00:00'),
    duration: 535
  }]
)
