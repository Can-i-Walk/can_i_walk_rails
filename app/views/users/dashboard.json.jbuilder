json.trips @user_trips.each do |t|
  json.extract! t, :trip_name, :walked_at, :distance, :completion
  json.ratings t.trip_points.find_by(place_type: "Ending Point").place.ratings do |r|
    json.extract! r, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment
  end
end
