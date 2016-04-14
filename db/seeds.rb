# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user_id: 1
User.create!(email: "geoffrey.s.arnold@gmail.com", password: "password", name: "Geoff", max_distance: 3.0, email_confirmed: true, accessibility_type: "Cane")

  # trip_id: 1
  Trip.create!(user_id: 1, trip_name: "Duke Gardens", distance: 2.5)
    # place_id: 1
    Place.create!(user_id: 1, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
    # place_id: 2
    Place.create!(user_id: 1, latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
    # place_id: 3
    Place.create!(user_id: 1, latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")
    # place_id: 4
    Place.create!(user_id: 1, latitude: 35.992592, longitude: -78.905567, place_name: "Nasher Museum")

  # trip_id: 2
  Trip.create!(user_id: 1, trip_name: "Tylers Pub", distance: 0.5)
    # place_id: 5
    Place.create!(user_id: 1, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
    # place_id: 6
    Place.create!(user_id: 1, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
    # place_id: 7
    Place.create!(user_id: 1, latitude: 35.993378, longitude: -78.904955, place_name: "Water Tower")
    # place_id: 8
    Place.create!(user_id: 1, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")



# user_id: 2
User.create!(email: "gregturmel@gmail.com", password: "password", name: "Greg", max_distance: 10.0, email_confirmed: true, accessibility_type: "Cane")
  # trip_id: 3
  Trip.create!(user_id: 2, trip_name: "Carolina Theatre", distance: 0.2)
    # place_id: 9
    Place.create!(user_id: 1, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
    # place_id: 10
    Place.create!(user_id: 2, latitude: 35.997872, longitude: -78.902952, place_name: "Carolina Theatre")
    # place_id: 11
    Place.create!(user_id: 1, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
    # place_id: 12
    Place.create!(user_id: 2, latitude: 35.997112, longitude: -78.903460, place_name: "Pizzeria Toro")


  # trip_id: 4
  Trip.create!(user_id: 2, trip_name: "First Presbyterian Church", distance: 0.7)
    # place_id: 13
    Place.create!(user_id: 2, latitude: 35.992892, longitude: -78.904498, place_name: "Surf Club")
    # place_id: 14
    Place.create!(user_id: 2, latitude: 35.993838, longitude: -78.897821, place_name: "First Presbyterian Church")
    # place_id: 15
    Place.create!(user_id: 2, latitude: 35.993146, longitude: -78.897525, place_name: "Durham Country Criminal Justice")
    # place_id: 16
    Place.create!(user_id: 2, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")



# user_id: 3
User.create!(email: "smithjeremym@gmail.com", password: "password", name: "Jeremy", max_distance: 15.0, email_confirmed: true, accessibility_type: "Cane")
  # trip_id: 5
  Trip.create!(user_id: 3, trip_name: "Marcus E. Hill Attorney at Law", distance: 0.7)
    # place_id: 17
    Place.create!(user_id: 3, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
    # place_id: 18
    Place.create!(user_id: 3, latitude: 35.993498, longitude: -78.897518, place_name: "Marcus E. Hill Attorney at Law")
    # place_id: 19
    Place.create!(user_id: 3, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
    # place_id: 20
    Place.create!(user_id: 3, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")


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
TripPoint.create!(place_id: 16, trip_id: 4, place_type: "Favorite Places")

TripPoint.create!(place_id: 1, trip_id: 5, place_type: "Starting Point")
TripPoint.create!(place_id: 15, trip_id: 5, place_type: "Ending Point")
TripPoint.create!(place_id: 17, trip_id: 6, place_type: "Favorite Places")
TripPoint.create!(place_id: 5, trip_id: 6, place_type: "Favorite Places")


Rating.create!(user_id: 1, place_id: 2, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
Rating.create!(user_id: 1, place_id: 4, ease_rating: 5, safety_rating: 5, enjoyability_rating: 3, accessibility_rating: 5, comment: "Art, what can I say?")
Rating.create!(user_id: 1, place_id: 5, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "Meh, it's Tylers.")
Rating.create!(user_id: 1, place_id: 6, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "Love me lucky strikes.")
Rating.create!(user_id: 1, place_id: 9, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "No, it's not Mexican.")
Rating.create!(user_id: 2, place_id: 13, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "It was divine.")
Rating.create!(user_id: 2, place_id: 15, ease_rating: 4, safety_rating: 3, enjoyability_rating: 4, accessibility_rating: 4, comment: "Anything but just.")
