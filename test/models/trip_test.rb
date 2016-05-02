require 'test_helper'

class TripTest < ActiveSupport::TestCase
  test "trips exist" do
    assert Trip
  end

  test "trips can be finished" do
    trip = trips(:chicago)
    trip.finish
    trip.walked_now
    assert_equal true, trip.completion
    assert_equal Time.now.day, trip.walked_at.day
  end
end
