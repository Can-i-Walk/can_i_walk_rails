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
end
