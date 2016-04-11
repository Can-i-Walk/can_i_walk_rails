json.places(@favorite_nearby_places) do |place|
  json.extract! place, :latitude, :longitude, :place_name
end
