if @distance =< 1
  json.array!(@favorite_nearby_places) 5.times do |place|
    json.extract! place, :id, :latitude, :longitude, :place_name
  end
elsif @distance =< 2
  json.array!(@favorite_nearby_places) 10.times do |place|
    json.extract! place, :id, :latitude, :longitude, :place_name
  end
else
  json.array!(@favorite_nearby_places) 15.times do |place|
    json.extract! place, :id, :latitude, :longitude, :place_name
  end
end
