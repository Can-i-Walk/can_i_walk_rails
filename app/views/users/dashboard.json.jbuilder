json.user [@user] do |u|
  json.extract! u, :id, :token, :email, :name, :max_distance
  json.places @user_favorites.each do |f|
    json.extract! f, :id, :latitude, :longitude, :place_name
  end
  json.ratings u.ratings, :id, :user_id, :place_id, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment
  json.trips u.trips.each do |t|
    json.extract! t, :id, :user_id, :trip_name, :walked_at, :planned_at, :distance, :completion
    json.trip_points t.trip_points.each do |tp|
      json.place_name tp.place.place_name
      json.place_type tp.place_type
      json.latitude tp.place.latitude
      json.longitude tp.place.longitude
    end
  end
end
