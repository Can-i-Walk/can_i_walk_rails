# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# user_id: 1
User.create!(email: "geoffrey.s.arnold@gmail.com", password: "password", name: "Geoff Arnold", max_distance: 1.5, email_confirmed: true, accessibility_type: "Cane")
  # trip_id: 1
  Trip.create!(user_id: 1, trip_name: "Sarah P. Duke Gardens", distance: 1.4, walked_at: 5.day.ago, completion: true)
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
  Trip.create!(user_id: 1, trip_name: "Cocoa Cinnamon", distance: 0.8, walked_at: 4.day.ago, completion: true)
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
  Trip.create!(user_id: 1, trip_name: "Carolina Theatre", distance: 0.5, walked_at: 3.day.ago, completion: true)
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
  Trip.create!(user_id: 1, trip_name: "Whole Foods", distance: 0.7, walked_at: 2.day.ago, completion: true)
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
  Trip.create!(user_id: 1, trip_name: "Museum of Life and Science", distance: 1.0, walked_at: 1.day.ago, completion: true)
    # place_id: 17
    Place.create!(user_id: 1, latitude: 36.023752, longitude: -78.900853, place_name: "Home")
      TripPoint.create!(place_id: 17, trip_id: 5, place_type: "Origin")
    # place_id: 18
    Place.create!(user_id: 1, latitude: 36.032669, longitude: -78.900937, place_name: "Rock Quarry Park")
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
  Trip.create!(user_id: 2, trip_name: "Eno State Park", distance: 1.3, walked_at: 5.day.ago, completion: true)
    # place_id: 21
    Place.create!(user_id: 2, latitude: 36.062654, longitude: -78.997655, place_name: "Home")
      TripPoint.create!(place_id: 21, trip_id: 6, place_type: "Origin")
    # place_id: 22
    Place.create!(user_id: 2, latitude: 36.079641, longitude: -79.004246, place_name: "Eno State Park")
      TripPoint.create!(place_id: 22, trip_id: 6, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 22, ease_rating: 3, safety_rating: 5, enjoyability_rating: 5, accessibility_rating: 1, comment: "Beautiful landscape.")
    # place_id: 23
    Place.create!(user_id: 2, latitude: 36.084062, longitude: -79.008563, place_name: "Amazing Trail")
      TripPoint.create!(place_id: 23, trip_id: 6, place_type: "Favorite")
    # place_id: 24
    Place.create!(user_id: 2, latitude: 36.084062, longitude: -79.008563, place_name: "Beautiful Farm")
      TripPoint.create!(place_id: 24, trip_id: 6, place_type: "Favorite")

  # trip_id: 7
  Trip.create!(user_id: 2, trip_name: "Mesa Latin Kitchen", distance: 0.9, walked_at: 4.day.ago, completion: true)
    # place_id: 25
    Place.create!(user_id: 2, latitude: 36.015756, longitude: -78.919211, place_name: "Joe Van Gogh Durham")
      TripPoint.create!(place_id: 25, trip_id: 7, place_type: "Origin")
    # place_id: 26
    Place.create!(user_id: 2, latitude: 36.011391, longitude: -78.930830, place_name: "Mesa Latin Kitchen")
      TripPoint.create!(place_id: 26, trip_id: 7, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 26, ease_rating: 4, safety_rating: 3, enjoyability_rating: 3, accessibility_rating: 3, comment: "Lots of construction along the way.")
    # place_id: 27
    Place.create!(user_id: 2, latitude: 36.009671, longitude: -78.922253, place_name: "Panera Bread")
      TripPoint.create!(place_id: 27, trip_id: 7, place_type: "Favorite")
    # place_id: 28
    Place.create!(user_id: 2, latitude: 36.009949, longitude: -78.920386, place_name: "Heavenly Buffaloes")
      TripPoint.create!(place_id: 28, trip_id: 7, place_type: "Favorite")

  # trip_id: 8
  Trip.create!(user_id: 2, trip_name: "Old Havana Sandwich Shop", distance: 1.0, walked_at: 3.day.ago, completion: true)
    # place_id: 29
    Place.create!(user_id: 2, latitude: 36.003343, longitude: -78.888400, place_name: "Speakeasy Coffee and Bar Incorporated")
      TripPoint.create!(place_id: 29, trip_id: 8, place_type: "Origin")
    # place_id: 30
    Place.create!(user_id: 2, latitude: 35.993372, longitude: -78.898028, place_name: "Old Havana Sandwich Shop")
      TripPoint.create!(place_id: 30, trip_id: 8, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 30, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "A pretty part of the city you don't usually see.")
    # place_id: 31
    Place.create!(user_id: 2, latitude: 36.002452, longitude: -78.889914, place_name: "Rocky Creek Park")
      TripPoint.create!(place_id: 31, trip_id: 8, place_type: "Favorite")
    # place_id: 32
    Place.create!(user_id: 2, latitude: 35.994903, longitude: -78.896511, place_name: "Durham County Library")
      TripPoint.create!(place_id: 32, trip_id: 8, place_type: "Favorite")

  # trip_id: 9
  Trip.create!(user_id: 2, trip_name: "Roses Meat Market and Sweet Shop", distance: 1.3, walked_at: 2.day.ago, completion: true)
    # place_id: 33
    Place.create!(user_id: 2, latitude: 36.004952, longitude: -78.891114, place_name: "Calvary United Methodist Church")
      TripPoint.create!(place_id: 33, trip_id: 9, place_type: "Origin")
    # place_id: 34
    Place.create!(user_id: 2, latitude: 36.000552, longitude: -78.909073, place_name: "Roses Meat Market and Sweet Shop")
      TripPoint.create!(place_id: 34, trip_id: 9, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 34, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 4, comment: "A nice walk with quaint sights.")
    # place_id: 35
    Place.create!(user_id: 2, latitude: 36.004835, longitude: -78.896659, place_name: "Bay-Hargrove Park")
      TripPoint.create!(place_id: 35, trip_id: 9, place_type: "Favorite")
    # place_id: 36
    Place.create!(user_id: 2, latitude: 36.004583, longitude: -78.899805, place_name: "Old North Durham Park")
      TripPoint.create!(place_id: 36, trip_id: 9, place_type: "Favorite")

  # trip_id: 10
  Trip.create!(user_id: 2, trip_name: "Surf Club", distance: 1.5, walked_at: 1.day.ago, completion: true)
    # place_id: 37
    Place.create!(user_id: 2, latitude: 35.997006, longitude: -78.922164, place_name: "Duke University Apartments")
      TripPoint.create!(place_id: 37, trip_id: 10, place_type: "Origin")
    # place_id: 38
    Place.create!(user_id: 2, latitude: 36.002153, longitude: -78.900073, place_name: "Surf Club")
      TripPoint.create!(place_id: 38, trip_id: 10, place_type: "Destination")
      Rating.create!(user_id: 2, place_id: 38, ease_rating: 3, safety_rating: 4, enjoyability_rating: 3, accessibility_rating: 4, comment: "Lots of interesting places around I didn't know about.")
    # place_id: 39
    Place.create!(user_id: 2, latitude: 35.997075, longitude: -78.915705, place_name: "Middle Eastern Food Market")
      TripPoint.create!(place_id: 39, trip_id: 10, place_type: "Favorite")
    # place_id: 40
    Place.create!(user_id: 2, latitude: 35.997075, longitude: -78.915705, place_name: "Beautiful Mural")
      TripPoint.create!(place_id: 40, trip_id: 10, place_type: "Favorite")


# user_id: 3
User.create!(email: "smithjeremym@gmail.com", password: "password", name: "Jeremy Smith", max_distance: 15.0, email_confirmed: true, accessibility_type: "Scooter")
  # trip_id: 11
  Trip.create!(user_id: 3, trip_name: "Duke Gardens", distance: 0.9, walked_at: 5.day.ago, completion: true)
    # place_id: 41
    Place.create!(user_id: 3, latitude: 35.991804, longitude: -78.904930, place_name: "Durham Bulls")
      TripPoint.create!(place_id: 41, trip_id: 11, place_type: "Origin")
    # place_id: 42
    Place.create!(user_id: 3, latitude: 36.003508, longitude: -78.900955, place_name: "Geer Street Garden")
      TripPoint.create!(place_id: 42, trip_id: 11, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 42, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Beautiful place.")
    # place_id: 43
    Place.create!(user_id: 3, latitude: 35.995942, longitude: -78.902492, place_name: "Hidden Courtyard")
      TripPoint.create!(place_id: 43, trip_id: 11, place_type: "Favorite")
    # place_id: 44
    Place.create!(user_id: 3, latitude: 35.996005, longitude: -78.902287, place_name: "RUNWAY Store")
      TripPoint.create!(place_id: 44, trip_id: 11, place_type: "Favorite")

  # trip_id: 12
  Trip.create!(user_id: 3, trip_name: "Duke Chapel", distance: 2.6, walked_at: 4.day.ago, completion: true)
    # place_id: 45
    Place.create!(user_id: 3, latitude: 36.000148, longitude: -78.898993, place_name: "Home")
      TripPoint.create!(place_id: 45, trip_id: 12, place_type: "Origin")
    # place_id: 46
    Place.create!(user_id: 3, latitude: 36.001674, longitude: -78.939861, place_name: "Duke Chapel")
      TripPoint.create!(place_id: 46, trip_id: 12, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 46, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Gorgeous surroundings.")
    # place_id: 47
    Place.create!(user_id: 3, latitude: 35.996975, longitude: -78.903608, place_name: "Pizzeria Toro")
      TripPoint.create!(place_id: 47, trip_id: 12, place_type: "Favorite")
    # place_id: 48
    Place.create!(user_id: 3, latitude: 35.996564, longitude: -78.915550, place_name: "Masjid Ar-Razzaq")
      TripPoint.create!(place_id: 48, trip_id: 12, place_type: "Favorite")

  # trip_id: 13
  Trip.create!(user_id: 3, trip_name: "Durham Co-op Market", distance: 1.6, walked_at: 3.day.ago, completion: true)
    # place_id: 49
    Place.create!(user_id: 3, latitude: 35.983592, longitude: -78.933847, place_name: "Anderson Apartments")
      TripPoint.create!(place_id: 49, trip_id: 13, place_type: "Origin")
    # place_id: 50
    Place.create!(user_id: 3, latitude: 35.996639, longitude: -78.916649, place_name: "Durham Co-op Market")
      TripPoint.create!(place_id: 50, trip_id: 13, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 50, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Nice quiet walk surrounded by forest.")
    # place_id: 51
    Place.create!(user_id: 3, latitude: 35.986548, longitude: -78.932346, place_name: "Park")
      TripPoint.create!(place_id: 51, trip_id: 13, place_type: "Favorite")
    # place_id: 52
    Place.create!(user_id: 3, latitude: 35.987049, longitude: -78.926560, place_name: "Flower Shop")
      TripPoint.create!(place_id: 52, trip_id: 13, place_type: "Favorite")

  # trip_id: 14
  Trip.create!(user_id: 3, trip_name: "Forest Hills Park", distance: 1.6, walked_at: 2.day.ago, completion: true)
    # place_id: 53
    Place.create!(user_id: 3, latitude: 35.995006, longitude: -78.927768, place_name: "Maplewood Cemetary")
      TripPoint.create!(place_id: 53, trip_id: 14, place_type: "Origin")
    # place_id: 54
    Place.create!(user_id: 3, latitude: 35.980978, longitude: -78.916312, place_name: "Forest Hills Park")
      TripPoint.create!(place_id: 54, trip_id: 14, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 54, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Lots of fun places around.")
    # place_id: 55
    Place.create!(user_id: 3, latitude: 35.984997, longitude: -78.922187, place_name: "Super Cool House")
      TripPoint.create!(place_id: 55, trip_id: 14, place_type: "Favorite")
    # place_id: 56
    Place.create!(user_id: 3, latitude: 35.992646, longitude: -78.916418, place_name: "Pauli Murray Center")
      TripPoint.create!(place_id: 56, trip_id: 14, place_type: "Favorite")

  # trip_id: 15
  Trip.create!(user_id: 3, trip_name: "Parizade", distance: 1.2, walked_at: 1.day.ago, completion: true)
    # place_id: 57
    Place.create!(user_id: 3, latitude: 36.008799, longitude: -78.910305, place_name: "Home")
      TripPoint.create!(place_id: 57, trip_id: 15, place_type: "Origin")
    # place_id: 58
    Place.create!(user_id: 3, latitude: 36.007601, longitude: -78.926430, place_name: "Parizade")
      TripPoint.create!(place_id: 58, trip_id: 15, place_type: "Destination")
      Rating.create!(user_id: 3, place_id: 58, ease_rating: 5, safety_rating: 4, enjoyability_rating: 3, accessibility_rating: 5, comment: "Mostly commercial surroundings.")
    # place_id: 59
    Place.create!(user_id: 3, latitude: 36.005397, longitude: -78.922450, place_name: "Sams Quik Shop")
      TripPoint.create!(place_id: 59, trip_id: 15, place_type: "Favorite")
    # place_id: 60
    Place.create!(user_id: 3, latitude: 36.006551, longitude: -78.913255, place_name: "Duke Coffee Shop")
      TripPoint.create!(place_id: 60, trip_id: 15, place_type: "Favorite")


# user_id: 4
User.create!(email: "danielbuompane@gmail.com", password: "password", name: "Daniel Buompane", max_distance: 8.0, email_confirmed: true, accessibility_type: "Wheelchair")
  # trip_id: 16
  Trip.create!(user_id: 4, trip_name: "Northgate Mall", distance: 1.2, walked_at: 5.day.ago, completion: true)
    # place_id: 61
    Place.create!(user_id: 4, latitude: 36.003243, longitude: -78.905423, place_name: "Bullington Warehouse")
      TripPoint.create!(place_id: 61, trip_id: 16, place_type: "Origin")
    # place_id: 62
    Place.create!(user_id: 4, latitude: 36.018650, longitude: -78.911323, place_name: "Northgate Mall")
      TripPoint.create!(place_id: 62, trip_id: 16, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 62, ease_rating: 5, safety_rating: 4, enjoyability_rating: 1, accessibility_rating: 2, comment: "Lots of traffic.")
    # place_id: 63
    Place.create!(user_id: 4, latitude: 36.007480, longitude: -78.903670, place_name: "Ellerbe Creek Trail")
      TripPoint.create!(place_id: 63, trip_id: 16, place_type: "Favorite")
    # place_id: 64
    Place.create!(user_id: 4, latitude: 36.013987, longitude: -78.906152, place_name: "Beautiful Neighborhood")
      TripPoint.create!(place_id: 64, trip_id: 16, place_type: "Favorite")

  # trip_id: 17
  Trip.create!(user_id: 4, trip_name: "Tylers Pub", distance: 0.5, walked_at: 4.day.ago, completion: true)
    # place_id: 65
    Place.create!(user_id: 4, latitude: 36.009914, longitude: -78.899652, place_name: "Home")
      TripPoint.create!(place_id: 65, trip_id: 17, place_type: "Origin")
    # place_id: 66
    Place.create!(user_id: 4, latitude: 35.995615, longitude: -78.900641, place_name: "Loaf Bakery")
      TripPoint.create!(place_id: 66, trip_id: 17, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 66, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Lovely downtown life.")
    # place_id: 67
    Place.create!(user_id: 4, latitude: 35.996741, longitude: -78.901467, place_name: "Courtyard Chess Tables")
      TripPoint.create!(place_id: 67, trip_id: 17, place_type: "Favorite")
    # place_id: 68
    Place.create!(user_id: 4, latitude: 35.997171, longitude: -78.901405, place_name: "Rooftop Bars")
      TripPoint.create!(place_id: 68, trip_id: 17, place_type: "Favorite")

  # trip_id: 18
  Trip.create!(user_id: 4, trip_name: "Triangle Brewing Co", distance: 1.2, walked_at: 3.day.ago, completion: true)
    # place_id: 69
    Place.create!(user_id: 4, latitude: 35.996487, longitude: -78.906851, place_name: "Durham Transit Station")
      TripPoint.create!(place_id: 69, trip_id: 18, place_type: "Origin")
    # place_id: 70
    Place.create!(user_id: 4, latitude: 35.996765, longitude: -78.889245, place_name: "Triangle Brewing Co")
      TripPoint.create!(place_id: 70, trip_id: 18, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 70, ease_rating: 3, safety_rating: 5, enjoyability_rating: 3, accessibility_rating: 2, comment: "Lots of hidden gems around.")
    # place_id: 71
    Place.create!(user_id: 4, latitude: 35.995506, longitude: -78.890221, place_name: "Seeds Neighborhood Garden")
      TripPoint.create!(place_id: 71, trip_id: 18, place_type: "Favorite")
    # place_id: 72
    Place.create!(user_id: 4, latitude: 35.994777, longitude: -78.899994, place_name: "Bar Lusocni")
      TripPoint.create!(place_id: 72, trip_id: 18, place_type: "Favorite")

  # trip_id: 19
  Trip.create!(user_id: 4, trip_name: "The Federal", distance: 1.3, walked_at: 2.day.ago, completion: true)
    # place_id: 73
    Place.create!(user_id: 4, latitude: 36.005792, longitude: -78.929133, place_name: "Duke Central Campus")
      TripPoint.create!(place_id: 73, trip_id: 19, place_type: "Origin")
    # place_id: 74
    Place.create!(user_id: 4, latitude: 36.000629, longitude: -78.910035, place_name: "The Federal")
      TripPoint.create!(place_id: 74, trip_id: 19, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 74, ease_rating: 3, safety_rating: 1, enjoyability_rating: 5, accessibility_rating: 2, comment: "Lots of nightlife.")
    # place_id: 75
    Place.create!(user_id: 4, latitude: 36.000746, longitude: -78.910740, place_name: "The Social")
      TripPoint.create!(place_id: 75, trip_id: 19, place_type: "Favorite")
    # place_id: 76
    Place.create!(user_id: 4, latitude: 36.006431, longitude: -78.920237, place_name: "Mad Hatter Cafe")
      TripPoint.create!(place_id: 76, trip_id: 19, place_type: "Favorite")

  # trip_id: 20
  Trip.create!(user_id: 4, trip_name: "Durham Farmers Market", distance: 0.6, walked_at: 1.day.ago, completion: true)
    # place_id: 77
    Place.create!(user_id: 4, latitude: 36.002589, longitude: -78.895517, place_name: "Glendale Apartments")
      TripPoint.create!(place_id: 77, trip_id: 20, place_type: "Origin")
    # place_id: 78
    Place.create!(user_id: 4, latitude: 36.000306, longitude: -78.901890, place_name: "Durham Farmers Market")
      TripPoint.create!(place_id: 78, trip_id: 20, place_type: "Destination")
      Rating.create!(user_id: 4, place_id: 78, ease_rating: 1, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Tons to do around here.")
    # place_id: 79
    Place.create!(user_id: 4, latitude: 35.999447, longitude: -78.901729, place_name: "Piedmont")
      TripPoint.create!(place_id: 79, trip_id: 20, place_type: "Favorite")
    # place_id: 80
    Place.create!(user_id: 4, latitude: 36.001877, longitude: -78.898982, place_name: "Organic Transit")
      TripPoint.create!(place_id: 80, trip_id: 20, place_type: "Favorite")


# user_id: 5
User.create!(email: "damekim1206@gmail.com", password: "password", name: "Da-Me Kim", max_distance: 4.0, email_confirmed: true, accessibility_type: "Wheelchair")
  # trip_id: 21
  Trip.create!(user_id: 5, trip_name: "Mateo Bar de Tapas", distance: 0.8, walked_at: 5.day.ago, completion: true)
    # place_id: 81
    Place.create!(user_id: 5, latitude: 35.999856, longitude: -78.893667, place_name: "Union Baptist Church")
      TripPoint.create!(place_id: 81, trip_id: 21, place_type: "Origin")
    # place_id: 82
    Place.create!(user_id: 5, latitude: 35.996879, longitude: -78.904793, place_name: "Mateo Bar de Tapas")
      TripPoint.create!(place_id: 82, trip_id: 21, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 82, ease_rating: 3, safety_rating: 2, enjoyability_rating: 2, accessibility_rating: 5, comment: "Cool places you could miss otherwise.")
    # place_id: 83
    Place.create!(user_id: 5, latitude: 35.999986, longitude: -78.896269, place_name: "Saltbox Seafood Joint")
      TripPoint.create!(place_id: 83, trip_id: 21, place_type: "Favorite")
    # place_id: 84
    Place.create!(user_id: 5, latitude: 36.000142, longitude: -78.895539, place_name: "Darko Urban Farm")
      TripPoint.create!(place_id: 84, trip_id: 21, place_type: "Favorite")

  # trip_id: 22
  Trip.create!(user_id: 5, trip_name: "Tylers Pub", distance: 0.5, walked_at: 4.day.ago, completion: true)
    # place_id: 85
    Place.create!(user_id: 5, latitude: 35.995624, longitude: -78.901937, place_name: "American Underground @Main")
      TripPoint.create!(place_id: 85, trip_id: 22, place_type: "Origin")
    # place_id: 86
    Place.create!(user_id: 5, latitude: 35.996857, longitude: -78.895548, place_name: "Downtown Durham Dog Park")
      TripPoint.create!(place_id: 86, trip_id: 22, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 86, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Some really beautiful architecture.")
    # place_id: 87
    Place.create!(user_id: 5, latitude: 35.995715, longitude: -78.898573, place_name: "Church Courtyard")
      TripPoint.create!(place_id: 87, trip_id: 22, place_type: "Favorite")
    # place_id: 88
    Place.create!(user_id: 5, latitude: 35.995602, longitude: -78.899700, place_name: "Bull City Patio")
      TripPoint.create!(place_id: 88, trip_id: 22, place_type: "Favorite")

  # trip_id: 23
  Trip.create!(user_id: 5, trip_name: "Durham Yoga Company", distance: 0.6, walked_at: 3.day.ago, completion: true)
    # place_id: 89
    Place.create!(user_id: 5, latitude: 36.005244, longitude: -78.904989, place_name: "Duke Tower Suites")
      TripPoint.create!(place_id: 89, trip_id: 23, place_type: "Origin")
    # place_id: 90
    Place.create!(user_id: 5, latitude: 36.000080, longitude: -78.899612, place_name: "Durham Yoga Company")
      TripPoint.create!(place_id: 90, trip_id: 23, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 90, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "Really crowded on the weekend.")
    # place_id: 91
    Place.create!(user_id: 5, latitude: 36.000757, longitude: -78.900803, place_name: "Park")
      TripPoint.create!(place_id: 91, trip_id: 23, place_type: "Favorite")
    # place_id: 92
    Place.create!(user_id: 5, latitude: 36.004350, longitude: -78.903224, place_name: "Old Bridge")
      TripPoint.create!(place_id: 92, trip_id: 23, place_type: "Favorite")

  # trip_id: 24
  Trip.create!(user_id: 5, trip_name: "First Presbyterian Church", distance: 0.7, walked_at: 2.day.ago, completion: true)
    # place_id: 93
    Place.create!(user_id: 5, latitude: 36.017407, longitude: -78.914131, place_name: "Walltown Program Site Center")
      TripPoint.create!(place_id: 93, trip_id: 24, place_type: "Origin")
    # place_id: 94
    Place.create!(user_id: 5, latitude: 36.013784, longitude: -78.921534, place_name: "Monuts Donuts")
      TripPoint.create!(place_id: 94, trip_id: 24, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 94, ease_rating: 3, safety_rating: 4, enjoyability_rating: 5, accessibility_rating: 2, comment: "This area is like a second downtown.")
    # place_id: 95
    Place.create!(user_id: 5, latitude: 36.013420, longitude: -78.918326, place_name: "House with Chicken Coop")
      TripPoint.create!(place_id: 95, trip_id: 24, place_type: "Favorite")
    # place_id: 96
    Place.create!(user_id: 5, latitude: 36.016431, longitude: -78.918959, place_name: "Watts Grocery")
      TripPoint.create!(place_id: 96, trip_id: 24, place_type: "Favorite")

  # trip_id: 25
  Trip.create!(user_id: 5, trip_name: "Center for Documentary Studies", distance: 1.1, walked_at: 1.day.ago, completion: true)
    # place_id: 97
    Place.create!(user_id: 5, latitude: 36.017980, longitude: -78.920893, place_name: "School of Science and Math")
      TripPoint.create!(place_id: 97, trip_id: 25, place_type: "Origin")
    # place_id: 98
    Place.create!(user_id: 5, latitude: 36.004183, longitude: -78.918132, place_name: "Center for Documentary Studies")
      TripPoint.create!(place_id: 98, trip_id: 25, place_type: "Destination")
      Rating.create!(user_id: 5, place_id: 98, ease_rating: 1, safety_rating: 1, enjoyability_rating: 2, accessibility_rating: 4, comment: "Not too much to see.")
    # place_id: 99
    Place.create!(user_id: 5, latitude: 36.009337, longitude: -78.919849, place_name: "Yoga Patio")
      TripPoint.create!(place_id: 99, trip_id: 25, place_type: "Favorite")
    # place_id: 100
    Place.create!(user_id: 5, latitude: 36.009647, longitude: -78.920305, place_name: "Hidden Bookstore")
      TripPoint.create!(place_id: 100, trip_id: 25, place_type: "Favorite")
