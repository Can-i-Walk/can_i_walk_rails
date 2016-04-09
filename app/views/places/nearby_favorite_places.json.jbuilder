json.places(@favorite_nearby_places) do |place|
  json.extract! place, :id, :latitude, :longitude, :place_name
end
