# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(code: "SFO")
Airport.create(code: "NYC")
Airport.create(code: "DEN")
Airport.create(code: "LAX")
Airport.create(code: "PHX")

Flight.create(start_airport_id: 1, finish_airport_id: 2, start_datetime: '2021-05-21 08:30:00', flight_duration: 5)
Flight.create(start_airport_id: 1, finish_airport_id: 2, start_datetime: '2021-05-21 09:30:00', flight_duration: 5)
Flight.create(start_airport_id: 1, finish_airport_id: 3, start_datetime: '2021-05-21 09:30:00', flight_duration: 2)
Flight.create(start_airport_id: 1, finish_airport_id: 4, start_datetime: '2021-05-21 10:30:00', flight_duration: 1)
Flight.create(start_airport_id: 1, finish_airport_id: 5, start_datetime: '2021-05-21 11:30:00', flight_duration: 2)
