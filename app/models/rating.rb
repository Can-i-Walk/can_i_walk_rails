class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  # def self.ease_average(lat, long)
  #   places = Place.within(0.25, :origin => [lat, long])
  #   places = Place.within(5.0, :origin => [35.992892, -78.904498])
  #   rated_places = []
  #   ratings = []
  #   places.each do |place|
  #     rated_places << place if place.trip_points.where(place_type: "Ending Point").first
  #   end
  #   rated_places.each do |place|
  #     ratings << place.ratings
  #   end
  #
  #   end
  #
  #   # Rating.joins(:trip_points).where("rating.place_id = trip_point.id").joins(:trip_points).where("trip_points.place_id = place.id")
  #   #
  #   # Rating.where(rating.place.trip_points.where(place_type: "Ending Point")).within.pluck(:ease_rating).average
  #   # Rating.pluck(:ease_rating).where(ratings.place.trip_points.include?(place_type: "Ending Point"))
  #
  #   nearby_destination.each do |n|
  #     @rated_places << n if n.trip_points.where(place_type: "Ending Point").first
  #   end
  # end
  #
  # def self.accessibility_average(lat, long)
  #   places = Place.within(0.25, :origin => [lat, long])
  # end
  #
  # def self.safety_average(lat, long)
  #   places = Place.within(0.25, :origin => [lat, long])
  # end
  #
  # def self.enjoyability_average(lat, long)
  #   places = Place.within(0.25, :origin => [lat, long])
  # end


end
