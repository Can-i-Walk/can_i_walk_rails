# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "geoff.arnold@mail.com", password: "password", name: "Geoff", max_distance: 3.0, email_confirmed: true)
User.create!(email: "greg.turmel@mail.com", password: "password", name: "Greg", max_distance: 10.0)
# User.create!(email: "jeremy.smith@mail.com", password: "password", name: "Jeremy", max_distance: 15.0)

Trip.create!(user_id: 1, trip_name: "Duke Gardens", distance: 2.5)
Trip.create!(user_id: 1, trip_name: "Tylers Pub", distance: 0.5)

Trip.create!(user_id: 2, trip_name: "Carolina Theatre", distance: 0.2)
Trip.create!(user_id: 2, trip_name: "First Presbyterian Church", distance: 0.7)

# Trip.create!(user_id: 3, trip_name: "Monuts", distance: 2.5)
# Trip.create!(user_id: 3, trip_name: "Joe Van Gogh", distance: 0.5)

Place.create!(user_id: 1, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
Place.create!(user_id: 1, latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
Place.create!(user_id: 1, latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")
Place.create!(user_id: 1, latitude: 35.992592, longitude: -78.905567, place_name: "Nasher Museum")

# Place.create!(user_id: 1, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
Place.create!(user_id: 1, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
Place.create!(user_id: 1, latitude: 35.993378, longitude: -78.904955, place_name: "Water Tower")
Place.create!(user_id: 1, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")

Place.create!(user_id: 2, latitude: 35.997872, longitude: -78.902952, place_name: "Carolina Theatre")
Place.create!(user_id: 2, latitude: 35.996622, longitude: -78.904658, place_name: "Mateo Tapas")
Place.create!(user_id: 2, latitude: 35.997247, longitude: -78.904819, place_name: "Bull McCabe Irish Pub")
Place.create!(user_id: 2, latitude: 35.996952, longitude: -78.903574, place_name: "Pizzeria Toro")

Place.create!(user_id: 2, latitude: 35.992892, longitude: -78.904498, place_name: "Surf Club")
Place.create!(user_id: 2, latitude: 35.993838, longitude: -78.897821, place_name: "First Presbyterian Church")
Place.create!(user_id: 2, latitude: 35.993122, longitude: -78.897590, place_name: "Durham Country Criminal Justice")
Place.create!(user_id: 2, latitude: 35.993122, longitude: -78.897590, place_name: "Durham Country Criminal Justice")
Place.create!(user_id: 2, latitude: 35.993122, longitude: -78.897590, place_name: "Durham Country Criminal Justice")
Place.create!(user_id: 2, latitude: 35.994719, longitude: -78.899929, place_name: "Bar Lusconi")
Place.create!(user_id: 2, latitude: 35.994719, longitude: -78.899929, place_name: "Bar Lusconi")
Place.create!(user_id: 2, latitude: 35.994719, longitude: -78.899929, place_name: "Bar Lusconi")


TripPoint.create!(place_id: 1, trip_id: 1, place_type: "Starting Point")
TripPoint.create!(place_id: 2, trip_id: 1, place_type: "Ending Point")
TripPoint.create!(place_id: 3, trip_id: 1, place_type: "Favorite Places")
TripPoint.create!(place_id: 4, trip_id: 1, place_type: "Favorite Places")

TripPoint.create!(place_id: 1, trip_id: 2, place_type: "Starting Point")
TripPoint.create!(place_id: 5, trip_id: 2, place_type: "Ending Point")
TripPoint.create!(place_id: 6, trip_id: 2, place_type: "Favorite Places")
TripPoint.create!(place_id: 7, trip_id: 2, place_type: "Favorite Places")

TripPoint.create!(place_id: 8, trip_id: 3, place_type: "Starting Point")
TripPoint.create!(place_id: 9, trip_id: 3, place_type: "Ending Point")
TripPoint.create!(place_id: 10, trip_id: 3, place_type: "Favorite Places")
TripPoint.create!(place_id: 11, trip_id: 3, place_type: "Favorite Places")

TripPoint.create!(place_id: 12, trip_id: 4, place_type: "Starting Point")
TripPoint.create!(place_id: 13, trip_id: 4, place_type: "Ending Point")
TripPoint.create!(place_id: 14, trip_id: 4, place_type: "Favorite Places")
TripPoint.create!(place_id: 15, trip_id: 4, place_type: "Favorite Places")

Rating.create!(user_id: 1, place_id: 2, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
Rating.create!(user_id: 1, place_id: 4, ease_rating: 5, safety_rating: 5, enjoyability_rating: 3, accessibility_rating: 5, comment: "It is aight.")
Rating.create!(user_id: 1, place_id: 5, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "Love me lucky strikes.")
