require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "users exist" do
    assert User
  end

  test "user has routes" do
    user = users(:geoff)
    trips_array = []
    trip_1 = trips(:duke_garden)
    trip_2 = trips(:toast)

    trips_array << trip_1
    trips_array << trip_2
    user.trips << trip_1
    user.trips << trip_2

    assert_equal user.trips.find_by(trip_name: "Duke Gardens"), trips_array.first
  end

  test "user has trip points in their routes" do
    user = users(:geoff)
    trips_array = []
    trip_1 = trips(:duke_garden)
    trip_2 = trips(:toast)
    trip_point_1 = trip_points(:starting)
    trip_point_2 = trip_points(:ending)
    trip_point_3 = trip_points(:favorite)

    trips_array << trip_1
    trips_array << trip_2
    user.trips << trip_1
    user.trips << trip_2
    trip_1.trip_points << trip_point_1
    trip_1.trip_points << trip_point_2
    trip_1.trip_points << trip_point_3

    assert_equal user.trips.find_by(trip_name: "Duke Gardens"), trips_array.first
    refute_equal user.trip_points.find_by(place_type: "Starting Point"), nil
    assert_equal user.trip_points, trip_1.trip_points
  end

  test "user has ratings of places in their routes" do
    user = users(:geoff)
    trips_array = []
    trip_1 = trips(:duke_garden)
    trip_2 = trips(:toast)
    trip_point_1 = trip_points(:starting)
    trip_point_2 = trip_points(:ending)
    trip_point_3 = trip_points(:favorite)
    duke_gardens = places(:duke)
    japanese_gardens = places(:japanese)
    duke_rating = ratings(:duke_rating)
    japanese_rating = ratings(:japanese_rating)

    trips_array << trip_1
    trips_array << trip_2
    user.trips << trip_1
    user.trips << trip_2
    user.ratings << duke_rating
    user.ratings << japanese_rating
    duke_gardens.ratings << duke_rating
    japanese_gardens.ratings << japanese_rating
    trip_1.trip_points << trip_point_1
    trip_1.trip_points << trip_point_2
    trip_1.trip_points << trip_point_3
    duke_gardens.trip_points << trip_point_2

    assert_equal user.trips.find_by(trip_name: "Duke Gardens"), trips_array.first
    assert_equal user.trip_points, trip_1.trip_points
    assert_equal user.trip_points.find_by(place_type: "Ending Point").place.place_name, duke_gardens.place_name
    assert_equal user.ratings.find_by(place: "duke"), duke_gardens.ratings.find_by(place: "duke")
  end
end
