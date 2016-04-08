json.user [@user] do |u|
  json.extract! u, :id, :token, :email, :name, :max_distance
  json.trips u.trips, :id, :user_id, :trip_name, :walked_at, :planned_at, :distance, :completion
  # json.trip_points [@trip_points] do |t|
  #   json.extract! t, :place_type, :place_id
  # end
  json.places u.places, :id, :latitude, :longitude, :place_name
  json.trip_points u.trip_points, :place_id, :trip_id, :place_type
  json.ratings u.ratings, :id, :user_id, :place_id, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment

end
