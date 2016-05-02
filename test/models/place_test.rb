require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  test "places exist" do
    assert Place
  end

  test "places have many trip_points" do
    place = places(:tiy)
    origin = trip_points(:origin)
    place.trip_points << origin
    assert_equal "Origin", place.trip_points.first.place_type
  end

  test "places have nearby places" do
    place = places(:tiy)
    assert_equal places(:toro), Place.nearby_places(0.25, place.latitude, place.longitude).find_by_place_name("Pizzeria Toro")
  end

  test "places can be suggested" do
    place = places(:tiy)
    assert_equal places(:duke), Place.suggest_places(1, place.latitude, place.longitude).find_by_place_name("Duke Gardens")
  end
end
