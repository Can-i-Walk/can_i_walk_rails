# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "geoffrey.s.arnold@mail.com", password: "password", name: "Geoff", max_distance: 3.0)

Trip.create(user_id: 1, trip_name: "Duke Gardens", distance: 2.5)
Trip.create(user_id: 1, trip_name: "Tylers Pub", distance: 0.5)

Place.create(user_id: 1, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
Place.create(user_id: 1, latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
Place.create(user_id: 1, latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")
Place.create(user_id: 1, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
Place.create(user_id: 1, latitude: 35.993052, longitude: -78.905073, place_name: "Water Tower")


TripPoint.create(place_id: 1, trip_id: 1, place_type: "Starting Point")
TripPoint.create(place_id: 2, trip_id: 1, place_type: "Ending Point")
TripPoint.create(place_id: 3, trip_id: 1, place_type: "Favorite Places")

TripPoint.create(place_id: 1, trip_id: 2, place_type: "Starting Point")
TripPoint.create(place_id: 4, trip_id: 2, place_type: "Ending Point")
TripPoint.create(place_id: 5, trip_id: 2, place_type: "Favorite Places")

Rating.create(user_id: 1, place_id: 2, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
Rating.create(user_id: 1, place_id: 4, ease_rating: 5, safety_rating: 5, enjoyability_rating: 3, accessibility_rating: 5, comment: "It is aight.")
Rating.create(user_id: 1, place_id: 5, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "Love me lucky strikes.")
