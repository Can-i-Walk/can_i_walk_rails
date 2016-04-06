json.array!(@places) do |place|
  json.extract! place, :id, :latitude, :longitude, :place_name
  json.url place_url(place, format: :json)
end
