json.favorite_places(@favorite_nearby_places) do |place|
  json.extract! place, :id, :latitude, :longitude, :place_name
end

json.nearby_destinations @rated_places.each do |place|
  json.ratings place.ratings, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment
end

# json.alerts @alert.alerts
# json.sunrise @astronomy.sunrise
# json.sunset @astronomy.sunset
# json.temperature @condition.temperature
# json.hourly_forcast @hourly
