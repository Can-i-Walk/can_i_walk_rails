json.favorite_places(@favorite_nearby_places) do |place|
  json.extract! place, :id, :latitude, :longitude, :place_name
end

json.nearby_destinations @rated_places.each do |place|
  json.ratings place.ratings, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment
end

# json.weather_info @alert.alerts |alert|
#   json.
# @astronomy.sunrise
# @astronomy.sunset
# @condition.conditions
# @hourly_forcast.temperature

json.weather_info(@weather_info) do |w|
  json.alerts w.alerts.alerts
  json.surnise w.astronomy.sunrise
  json.sunset w.astronomy.sunset
  json.temperature w.conditions.temperature
  json.hourly_forcast w.hourly
end
