# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flight.delete_all
Airport.delete_all

Airport.create!([{ code: 'ATL' }, { code: 'PEK' }, { code: 'LAX' }, { code: 'DXB' }, { code: 'HND' },
                 { code: 'ORD' }, { code: 'LHR' }, { code: 'PVG' }, { code: 'CDG' }, { code: 'DFW' }])

Flight.create!({ number: "NK233", departure_airport_id: 1, arrival_airport_id: 10,
                 start_datetime: DateTime.new(2022, 12, 20, 13, 5, 0), duration: 149 })

Flight.create!({ number: "NH125", departure_airport_id: 3, arrival_airport_id: 5,
                 start_datetime: DateTime.new(2022, 12, 21, 23, 45, 0), duration: 745 })

Flight.create!({ number: "CA1835", departure_airport_id: 2, arrival_airport_id: 8,
                 start_datetime: DateTime.new(2022, 12, 22, 2, 0, 0), duration: 135 })

Flight.create!({ number: "AF659", departure_airport_id: 4, arrival_airport_id: 9,
                 start_datetime: DateTime.new(2022, 12, 23, 7, 10, 0), duration: 455 })

Flight.create!({ number: "BA294", departure_airport_id: 6, arrival_airport_id: 7,
                 start_datetime: DateTime.new(2022, 12, 24, 11, 0, 0), duration: 460 })

Flight.create!({ number: "NK1025", departure_airport_id: 10, arrival_airport_id: 1,
                 start_datetime: DateTime.new(2022, 12, 25, 13, 53, 0), duration: 127 })

Flight.create!({ number: "NH126", departure_airport_id: 5, arrival_airport_id: 3,
                 start_datetime: DateTime.new(2022, 12, 26, 12, 5, 0), duration: 600 })

Flight.create!({ number: "CA1884", departure_airport_id: 8, arrival_airport_id: 2,
                 start_datetime: DateTime.new(2022, 12, 27, 8, 15, 0), duration: 145 })

Flight.create!({ number: "AF662", departure_airport_id: 9, arrival_airport_id: 4,
                 start_datetime: DateTime.new(2022, 12, 28, 10, 10, 0), duration: 705 })

Flight.create!({ number: "BA295", departure_airport_id: 7, arrival_airport_id: 6,
                 start_datetime: DateTime.new(2022, 12, 29, 11, 20, 0), duration: 535 })
