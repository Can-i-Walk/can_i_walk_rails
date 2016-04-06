require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  test "places exist" do
    assert Place
  end

  test "places have many trip_points" do
    place = places(:tiy)
    starting_point = trip_points(:starting)
    place.trip_points << starting_point
    assert_equal "Starting Point", place.trip_points.first.place_type
  end
end
