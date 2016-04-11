json.places(@places) do |place|
  json.extract! place, :id, :latitude, :longitude, :place_name
  json.trip_points place.trip_points, :place_type
  json.url place_url(place, format: :json)
end
