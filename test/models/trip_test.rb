require 'test_helper'

class TripTest < ActiveSupport::TestCase
  test "trips exist" do
    assert Trip
  end

  test "trips can be finished" do
    trip = trips(:chicago)
    trip.finish
    trip.walked_now
    byebug
    assert_equal trip.completion, true
    assert_equal trip.walked_at, Time.now
  end
end
