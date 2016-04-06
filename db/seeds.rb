# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "geoffrey.s.arnold@gmail.com", password: "password", name: "Geoff", max_distance: 3.0)

Trip.create(user_id: 1, trip_name: "Duke Gardens", distance: 2.5)

Place.create(latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
Place.create(latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
Place.create(latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")

TripPoint.create(place_id: 1, trip_id: 1, place_type: "Starting Point")
TripPoint.create(place_id: 2, trip_id: 1, place_type: "Ending Point")
TripPoint.create(place_id: 3, trip_id: 1, place_type: "Favorite Places")
