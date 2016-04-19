# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user_id: 1
User.create!(email: "geoffrey.s.arnold@gmail.com", password: "password", name: "Geoff Arnold", max_distance: 5.0, email_confirmed: true, accessibility_type: "Cane")
  # trip_id: 1
  Trip.create!(user_id: 1, trip_name: "Sarah P. Duke Gardens", distance: 1.4)
    # place_id: 1
    Place.create!(user_id: 1, latitude: 36.007088, longitude: -78.916113, place_name: "Duke East Campus")
      TripPoint.create!(place_id: 1, trip_id: 1, place_type: "Origin")
    # place_id: 2
    Place.create!(user_id: 1, latitude: 36.001412, longitude: -78.930822, place_name: "Sarah P. Duke Gardens")
      TripPoint.create!(place_id: 2, trip_id: 1, place_type: "Destination")
      Rating.create!(user_id: 1, place_id: 2, ease_rating: 4, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 4, comment: "Beautiful walk through forests. Sidewalks the whole way.")
    # place_id: 3
    Place.create!(user_id: 1, latitude: 36.003729, longitude: -78.934191, place_name: "Japanese Gardens")
      TripPoint.create!(place_id: 3, trip_id: 1, place_type: "Favorite")
    # place_id: 4
    Place.create!(user_id: 1, latitude: 35.999259, longitude: -78.929020, place_name: "Nasher Museum")
      TripPoint.create!(place_id: 4, trip_id: 1, place_type: "Favorite")

  # trip_id: 2
  Trip.create!(user_id: 1, trip_name: "Cocoa Cinnamon", distance: 0.8)
    # place_id: 5
    Place.create!(user_id: 1, latitude: 35.993279, longitude: -78.902309, place_name: "Durham Performing Arts Center")
      TripPoint.create!(place_id: 5, trip_id: 2, place_type: "Origin")
    # place_id: 6
    Place.create!(user_id: 1, latitude: 36.004051, longitude: -78.900721, place_name: "Cocoa Cinnamon")
      TripPoint.create!(place_id: 6, trip_id: 2, place_type: "Destination")
      Rating.create!(user_id: 1, place_id: 6, ease_rating: 3, safety_rating: 3, enjoyability_rating: 5, accessibility_rating: 3, comment: "Neat little hangout spots with lots to do.")
    # place_id: 7
    Place.create!(user_id: 1, latitude: 36.000284, longitude: -78.901794, place_name: "Durham Farmers Market")
      TripPoint.create!(place_id: 7, trip_id: 2, place_type: "Favorite")
    # place_id: 8
    Place.create!(user_id: 1, latitude: 35.995814, longitude: -78.901794, place_name: "The Counting House")
      TripPoint.create!(place_id: 8, trip_id: 2, place_type: "Favorite")

  # trip_id: 3
  Trip.create!(user_id: 1, trip_name: "Carolina Theatre", distance: 0.5)
    # place_id: 9
    Place.create!(user_id: 1, latitude: 35.993002, longitude: -78.904412, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 9, trip_id: 3, place_type: "Origin")
    # place_id: 10
    Place.create!(user_id: 1, latitude: 35.997820, longitude: -78.902887, place_name: "Carolina Theatre")
      TripPoint.create!(place_id: 10, trip_id: 3, place_type: "Destination")
      Rating.create!(user_id: 1, place_id: 10, ease_rating: 4, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 4, comment: "Fun walk through heart of downtown.")
    # place_id: 11
    Place.create!(user_id: 1, latitude: 35.993297, longitude: -78.904895, place_name: "Water Tower")
      TripPoint.create!(place_id: 11, trip_id: 3, place_type: "Favorite")
    # place_id: 12
    Place.create!(user_id: 1, latitude: 35.994610, longitude: -78.904351, place_name: "Waterfall")
      TripPoint.create!(place_id: 12, trip_id: 3, place_type: "Favorite")

  # trip_id: 4
  Trip.create!(user_id: 1, trip_name: "Whole Foods", distance: 0.7)
    # place_id: 13
    Place.create!(user_id: 1, latitude: 36.016771, longitude: -78.920597, place_name: "Home")
      TripPoint.create!(place_id: 13, trip_id: 4, place_type: "Origin")
    # place_id: 14
    Place.create!(user_id: 1, latitude: 36.007027, longitude: -78.920506, place_name: "Whole Foods")
      TripPoint.create!(place_id: 14, trip_id: 4, place_type: "Destination")
      Rating.create!(user_id: 1, place_id: 14, ease_rating: 5, safety_rating: 5, enjoyability_rating: 5, accessibility_rating: 3, comment: "Calm, leisurely, and pleasant walk.")
    # place_id: 15
    Place.create!(user_id: 1, latitude: 36.012035, longitude: -78.920495, place_name: "Pretty houses")
      TripPoint.create!(place_id: 15, trip_id: 4, place_type: "Favorite")
    # place_id: 16
    Place.create!(user_id: 1, latitude: 36.008789, longitude: -78.918607, place_name: "East Campus Disc Golf")
      TripPoint.create!(place_id: 16, trip_id: 4, place_type: "Favorite")

  # trip_id: 5
  Trip.create!(user_id: 1, trip_name: "Museum of Life and Science", distance: 1.0)
    # place_id: 17
    Place.create!(user_id: 1, latitude: 36.023752, longitude: -78.900853, place_name: "Home")
      TripPoint.create!(place_id: 17, trip_id: 5, place_type: "Origin")
    # place_id: 18
    Place.create!(user_id: 1, latitude: 36.029106, longitude: -78.899572, place_name: "Museum of Life and Science")
      TripPoint.create!(place_id: 18, trip_id: 5, place_type: "Destination")
      Rating.create!(user_id: 1, place_id: 18, ease_rating: 4, safety_rating: 4, enjoyability_rating: 4, accessibility_rating: 2, comment: "Pleasant walk through the neighborhood. Sidewalks need repair.")
    # place_id: 19
    Place.create!(user_id: 1, latitude: 36.026144, longitude: -78.900561, place_name: "Ellerbe Creek")
      TripPoint.create!(place_id: 19, trip_id: 5, place_type: "Favorite")
    # place_id: 20
    Place.create!(user_id: 1, latitude: 36.023897, longitude: -78.899456, place_name: "Dog Park")
      TripPoint.create!(place_id: 20, trip_id: 5, place_type: "Favorite")


# user_id: 2
User.create!(email: "gregturmel@gmail.com", password: "password", name: "Greg Turmel", max_distance: 10.0, email_confirmed: true, accessibility_type: "Walker")
  # trip_id: 6
  Trip.create!(user_id: 2, trip_name: "Duke Gardens", distance: 2.5)
    # place_id: 21
    Place.create!(user_id: 2, latitude: 36.062654, longitude: -78.997655, place_name: "Home")
      TripPoint.create!(place_id: 21, trip_id: 6, place_type: "Origin")
    # place_id: 22
    Place.create!(user_id: 2, latitude: 36.079641, longitude: -79.004246, place_name: "Eno State Park")
      TripPoint.create!(place_id: 22, trip_id: 6, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 2, ease_rating: 3, safety_rating: 5, enjoyability_rating: 5, accessibility_rating: 1, comment: "Beautiful landscape.")
    # place_id: 23
    Place.create!(user_id: 2, latitude: 36.084062, longitude: -79.008563, place_name: "Amazing Trail")
      TripPoint.create!(place_id: 23, trip_id: 6, place_type: "Favorite")
    # place_id: 24
    Place.create!(user_id: 2, latitude: 36.084062, longitude: -79.008563, place_name: "Beautiful Farm")
      TripPoint.create!(place_id: 24, trip_id: 6, place_type: "Favorite")

  # trip_id: 7
  Trip.create!(user_id: 2, trip_name: "Tylers Pub", distance: 0.5)
    # place_id: 25
    Place.create!(user_id: 2, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 25, trip_id: 7, place_type: "Origin")
    # place_id: 26
    Place.create!(user_id: 2, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 26, trip_id: 7, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 6, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Cliche.")
    # place_id: 27
    Place.create!(user_id: 2, latitude: 35.993378, longitude: -78.904955, place_name: "Water Tower")
      TripPoint.create!(place_id: 27, trip_id: 7, place_type: "Favorite")
    # place_id: 28
    Place.create!(user_id: 2, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 28, trip_id: 7, place_type: "Favorite")

  # trip_id: 8
  Trip.create!(user_id: 2, trip_name: "Carolina Theatre", distance: 0.2)
    # place_id: 29
    Place.create!(user_id: 2, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 29, trip_id: 8, place_type: "Origin")
    # place_id: 30
    Place.create!(user_id: 2, latitude: 35.997872, longitude: -78.902952, place_name: "Carolina Theatre")
      TripPoint.create!(place_id: 30, trip_id: 8, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 10, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Pretty cool movies.")
    # place_id: 31
    Place.create!(user_id: 2, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 31, trip_id: 8, place_type: "Favorite")
    # place_id: 32
    Place.create!(user_id: 2, latitude: 35.997112, longitude: -78.903460, place_name: "Pizzeria Toro")
      TripPoint.create!(place_id: 32, trip_id: 8, place_type: "Favorite")

  # trip_id: 9
  Trip.create!(user_id: 2, trip_name: "First Presbyterian Church", distance: 0.7)
    # place_id: 33
    Place.create!(user_id: 2, latitude: 35.992892, longitude: -78.904498, place_name: "Surf Club")
      TripPoint.create!(place_id: 33, trip_id: 9, place_type: "Origin")
    # place_id: 34
    Place.create!(user_id: 2, latitude: 35.993838, longitude: -78.897821, place_name: "First Presbyterian Church")
      TripPoint.create!(place_id: 34, trip_id: 9, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 14, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Divine.")
    # place_id: 35
    Place.create!(user_id: 2, latitude: 35.993146, longitude: -78.897525, place_name: "Durham Country Criminal Justice")
      TripPoint.create!(place_id: 35, trip_id: 9, place_type: "Favorite")
    # place_id: 36
    Place.create!(user_id: 2, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 36, trip_id: 9, place_type: "Favorite")

  # trip_id: 10
  Trip.create!(user_id: 2, trip_name: "Marcus E. Hill Attorney at Law", distance: 0.7)
    # place_id: 37
    Place.create!(user_id: 2, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 37, trip_id: 10, place_type: "Origin")
    # place_id: 38
    Place.create!(user_id: 2, latitude: 35.993498, longitude: -78.897518, place_name: "Marcus E. Hill Attorney at Law")
      TripPoint.create!(place_id: 38, trip_id: 10, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 18, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "They are all liars.")
    # place_id: 39
    Place.create!(user_id: 2, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 39, trip_id: 10, place_type: "Favorite")
    # place_id: 40
    Place.create!(user_id: 2, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 40, trip_id: 10, place_type: "Favorite")


# user_id: 3
User.create!(email: "smithjeremym@gmail.com", password: "password", name: "Jeremy Smith", max_distance: 15.0, email_confirmed: true, accessibility_type: "Scooter")
  # trip_id: 11
  Trip.create!(user_id: 3, trip_name: "Duke Gardens", distance: 2.5)
    # place_id: 41
    Place.create!(user_id: 3, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 41, trip_id: 11, place_type: "Origin")
    # place_id: 42
    Place.create!(user_id: 3, latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
      TripPoint.create!(place_id: 42, trip_id: 11, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 2, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
    # place_id: 43
    Place.create!(user_id: 3, latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")
      TripPoint.create!(place_id: 43, trip_id: 11, place_type: "Favorite")
    # place_id: 44
    Place.create!(user_id: 3, latitude: 35.992592, longitude: -78.905567, place_name: "Nasher Museum")
      TripPoint.create!(place_id: 44, trip_id: 11, place_type: "Favorite")

  # trip_id: 12
  Trip.create!(user_id: 3, trip_name: "Tylers Pub", distance: 0.5)
    # place_id: 45
    Place.create!(user_id: 3, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 45, trip_id: 12, place_type: "Origin")
    # place_id: 46
    Place.create!(user_id: 3, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 46, trip_id: 12, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 6, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Cliche.")
    # place_id: 47
    Place.create!(user_id: 3, latitude: 35.993378, longitude: -78.904955, place_name: "Water Tower")
      TripPoint.create!(place_id: 47, trip_id: 12, place_type: "Favorite")
    # place_id: 48
    Place.create!(user_id: 3, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 48, trip_id: 12, place_type: "Favorite")

  # trip_id: 13
  Trip.create!(user_id: 3, trip_name: "Carolina Theatre", distance: 0.2)
    # place_id: 49
    Place.create!(user_id: 3, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 49, trip_id: 13, place_type: "Origin")
    # place_id: 50
    Place.create!(user_id: 3, latitude: 35.997872, longitude: -78.902952, place_name: "Carolina Theatre")
      TripPoint.create!(place_id: 50, trip_id: 13, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 10, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Pretty cool movies.")
    # place_id: 51
    Place.create!(user_id: 3, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 51, trip_id: 13, place_type: "Favorite")
    # place_id: 52
    Place.create!(user_id: 3, latitude: 35.997112, longitude: -78.903460, place_name: "Pizzeria Toro")
      TripPoint.create!(place_id: 52, trip_id: 13, place_type: "Favorite")

  # trip_id: 14
  Trip.create!(user_id: 3, trip_name: "First Presbyterian Church", distance: 0.7)
    # place_id: 53
    Place.create!(user_id: 3, latitude: 35.992892, longitude: -78.904498, place_name: "Surf Club")
      TripPoint.create!(place_id: 53, trip_id: 14, place_type: "Origin")
    # place_id: 54
    Place.create!(user_id: 3, latitude: 35.993838, longitude: -78.897821, place_name: "First Presbyterian Church")
      TripPoint.create!(place_id: 54, trip_id: 14, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 14, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Divine.")
    # place_id: 55
    Place.create!(user_id: 3, latitude: 35.993146, longitude: -78.897525, place_name: "Durham Country Criminal Justice")
      TripPoint.create!(place_id: 55, trip_id: 14, place_type: "Favorite")
    # place_id: 56
    Place.create!(user_id: 3, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 56, trip_id: 14, place_type: "Favorite")

  # trip_id: 15
  Trip.create!(user_id: 3, trip_name: "Marcus E. Hill Attorney at Law", distance: 0.7)
    # place_id: 57
    Place.create!(user_id: 3, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 57, trip_id: 15, place_type: "Origin")
    # place_id: 58
    Place.create!(user_id: 3, latitude: 35.993498, longitude: -78.897518, place_name: "Marcus E. Hill Attorney at Law")
      TripPoint.create!(place_id: 58, trip_id: 15, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 18, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "They are all liars.")
    # place_id: 59
    Place.create!(user_id: 3, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 59, trip_id: 15, place_type: "Favorite")
    # place_id: 60
    Place.create!(user_id: 3, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 60, trip_id: 15, place_type: "Favorite")


# user_id: 4
User.create!(email: "danielbuompane@gmail.com", password: "password", name: "Daniel Buompane", max_distance: 8.0, email_confirmed: true, accessibility_type: "Wheelchair")
  # trip_id: 16
  Trip.create!(user_id: 4, trip_name: "Duke Gardens", distance: 2.5)
    # place_id: 61
    Place.create!(user_id: 4, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 61, trip_id: 16, place_type: "Origin")
    # place_id: 62
    Place.create!(user_id: 4, latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
      TripPoint.create!(place_id: 62, trip_id: 16, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 2, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
    # place_id: 63
    Place.create!(user_id: 4, latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")
      TripPoint.create!(place_id: 63, trip_id: 16, place_type: "Favorite")
    # place_id: 64
    Place.create!(user_id: 4, latitude: 35.992592, longitude: -78.905567, place_name: "Nasher Museum")
      TripPoint.create!(place_id: 64, trip_id: 16, place_type: "Favorite")

  # trip_id: 17
  Trip.create!(user_id: 4, trip_name: "Tylers Pub", distance: 0.5)
    # place_id: 65
    Place.create!(user_id: 4, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 65, trip_id: 17, place_type: "Origin")
    # place_id: 66
    Place.create!(user_id: 4, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 66, trip_id: 17, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 6, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Cliche.")
    # place_id: 67
    Place.create!(user_id: 4, latitude: 35.993378, longitude: -78.904955, place_name: "Water Tower")
      TripPoint.create!(place_id: 67, trip_id: 17, place_type: "Favorite")
    # place_id: 68
    Place.create!(user_id: 4, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 68, trip_id: 17, place_type: "Favorite")

  # trip_id: 18
  Trip.create!(user_id: 4, trip_name: "Carolina Theatre", distance: 0.2)
    # place_id: 69
    Place.create!(user_id: 4, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 69, trip_id: 18, place_type: "Origin")
    # place_id: 70
    Place.create!(user_id: 4, latitude: 35.997872, longitude: -78.902952, place_name: "Carolina Theatre")
      TripPoint.create!(place_id: 70, trip_id: 18, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 10, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Pretty cool movies.")
    # place_id: 71
    Place.create!(user_id: 4, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 71, trip_id: 18, place_type: "Favorite")
    # place_id: 72
    Place.create!(user_id: 4, latitude: 35.997112, longitude: -78.903460, place_name: "Pizzeria Toro")
      TripPoint.create!(place_id: 72, trip_id: 18, place_type: "Favorite")

  # trip_id: 19
  Trip.create!(user_id: 4, trip_name: "First Presbyterian Church", distance: 0.7)
    # place_id: 73
    Place.create!(user_id: 4, latitude: 35.992892, longitude: -78.904498, place_name: "Surf Club")
      TripPoint.create!(place_id: 73, trip_id: 19, place_type: "Origin")
    # place_id: 74
    Place.create!(user_id: 4, latitude: 35.993838, longitude: -78.897821, place_name: "First Presbyterian Church")
      TripPoint.create!(place_id: 74, trip_id: 19, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 14, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Divine.")
    # place_id: 75
    Place.create!(user_id: 4, latitude: 35.993146, longitude: -78.897525, place_name: "Durham Country Criminal Justice")
      TripPoint.create!(place_id: 75, trip_id: 19, place_type: "Favorite")
    # place_id: 76
    Place.create!(user_id: 4, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 76, trip_id: 19, place_type: "Favorite")

  # trip_id: 20
  Trip.create!(user_id: 4, trip_name: "Marcus E. Hill Attorney at Law", distance: 0.7)
    # place_id: 77
    Place.create!(user_id: 4, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 77, trip_id: 20, place_type: "Origin")
    # place_id: 78
    Place.create!(user_id: 4, latitude: 35.993498, longitude: -78.897518, place_name: "Marcus E. Hill Attorney at Law")
      TripPoint.create!(place_id: 78, trip_id: 20, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 18, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "They are all liars.")
    # place_id: 79
    Place.create!(user_id: 4, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 79, trip_id: 20, place_type: "Favorite")
    # place_id: 80
    Place.create!(user_id: 4, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 80, trip_id: 20, place_type: "Favorite")


# user_id: 5
User.create!(email: "damekim1206@gmail.com", password: "password", name: "Da-Me Kim", max_distance: 4.0, email_confirmed: true, accessibility_type: "Wheelchair")
  # trip_id: 21
  Trip.create!(user_id: 5, trip_name: "Duke Gardens", distance: 2.5)
    # place_id: 81
    Place.create!(user_id: 5, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 81, trip_id: 21, place_type: "Origin")
    # place_id: 82
    Place.create!(user_id: 5, latitude: 36.003633, longitude: -78.934175, place_name: "Duke Gardens")
      TripPoint.create!(place_id: 82, trip_id: 21, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 2, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
    # place_id: 83
    Place.create!(user_id: 5, latitude: 36.003633, longitude: -78.934175, place_name: "Japanese Gardens")
      TripPoint.create!(place_id: 83, trip_id: 21, place_type: "Favorite")
    # place_id: 84
    Place.create!(user_id: 5, latitude: 35.992592, longitude: -78.905567, place_name: "Nasher Museum")
      TripPoint.create!(place_id: 84, trip_id: 21, place_type: "Favorite")

  # trip_id: 22
  Trip.create!(user_id: 5, trip_name: "Tylers Pub", distance: 0.5)
    # place_id: 85
    Place.create!(user_id: 5, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 85, trip_id: 22, place_type: "Origin")
    # place_id: 86
    Place.create!(user_id: 5, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 86, trip_id: 22, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 6, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Cliche.")
    # place_id: 87
    Place.create!(user_id: 5, latitude: 35.993378, longitude: -78.904955, place_name: "Water Tower")
      TripPoint.create!(place_id: 87, trip_id: 22, place_type: "Favorite")
    # place_id: 88
    Place.create!(user_id: 5, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 88, trip_id: 22, place_type: "Favorite")

  # trip_id: 23
  Trip.create!(user_id: 5, trip_name: "Carolina Theatre", distance: 0.2)
    # place_id: 89
    Place.create!(user_id: 5, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 89, trip_id: 23, place_type: "Origin")
    # place_id: 90
    Place.create!(user_id: 5, latitude: 35.997872, longitude: -78.902952, place_name: "Carolina Theatre")
      TripPoint.create!(place_id: 90, trip_id: 23, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 10, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Pretty cool movies.")
    # place_id: 91
    Place.create!(user_id: 5, latitude: 35.993167, longitude: -78.905677, place_name: "Bronto Software")
      TripPoint.create!(place_id: 91, trip_id: 23, place_type: "Favorite")
    # place_id: 92
    Place.create!(user_id: 5, latitude: 35.997112, longitude: -78.903460, place_name: "Pizzeria Toro")
      TripPoint.create!(place_id: 92, trip_id: 23, place_type: "Favorite")

  # trip_id: 24
  Trip.create!(user_id: 5, trip_name: "First Presbyterian Church", distance: 0.7)
    # place_id: 93
    Place.create!(user_id: 5, latitude: 35.992892, longitude: -78.904498, place_name: "Surf Club")
      TripPoint.create!(place_id: 93, trip_id: 24, place_type: "Origin")
    # place_id: 94
    Place.create!(user_id: 5, latitude: 35.993838, longitude: -78.897821, place_name: "First Presbyterian Church")
      TripPoint.create!(place_id: 94, trip_id: 24, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 14, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Divine.")
    # place_id: 95
    Place.create!(user_id: 5, latitude: 35.993146, longitude: -78.897525, place_name: "Durham Country Criminal Justice")
      TripPoint.create!(place_id: 95, trip_id: 24, place_type: "Favorite")
    # place_id: 96
    Place.create!(user_id: 5, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 96, trip_id: 24, place_type: "Favorite")

  # trip_id: 25
  Trip.create!(user_id: 5, trip_name: "Marcus E. Hill Attorney at Law", distance: 0.7)
    # place_id: 97
    Place.create!(user_id: 5, latitude: 35.992892, longitude: -78.904498, place_name: "The Iron Yard")
      TripPoint.create!(place_id: 97, trip_id: 25, place_type: "Origin")
    # place_id: 98
    Place.create!(user_id: 5, latitude: 35.993498, longitude: -78.897518, place_name: "Marcus E. Hill Attorney at Law")
      TripPoint.create!(place_id: 98, trip_id: 25, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 18, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "They are all liars.")
    # place_id: 99
    Place.create!(user_id: 5, latitude: 35.997112, longitude: -78.903460, place_name: "Old Havana")
      TripPoint.create!(place_id: 99, trip_id: 25, place_type: "Favorite")
    # place_id: 100
    Place.create!(user_id: 5, latitude: 35.992592, longitude: -78.905567, place_name: "Tylers Pub")
      TripPoint.create!(place_id: 100, trip_id: 25, place_type: "Favorite")
