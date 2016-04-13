json.favorite_places(@favorite_nearby_places) do |place|
  json.extract! place, :id, :latitude, :longitude, :place_name
end

json.trip_ratings @rated_places.each do |place|
  json.ratings place.ratings, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment
end

json.average_ratings do
  json.ease_average @ease_average
  json.enjoyability_average @enjoyability_average
  json.accessibility_average @accessibility_average
  json.safety_average @safety_average
end

# json.alerts @alert.alerts
# json.sunrise @astronomy.sunrise
# json.sunset @astronomy.sunset
# json.temperature @condition.temperature
# json.current_weather @condition.weather
# json.weather_icon @condition.weather_icon
