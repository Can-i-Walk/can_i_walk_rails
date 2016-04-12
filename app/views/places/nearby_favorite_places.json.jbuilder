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

# json.weather_info
#   json.alerts @weather_info.alerts.alerts.to_json
#   json.surnise @weather_info.astronomy.sunrise.to_json
#   json.sunset @weather_info.astronomy.sunset.to_json
#   json.temperature @weather_info.conditions.temperature.to_json
#   json.hourly_forcast @weather_info.hourly.to_json


@alert.alerts.to_json
@astronomy.sunrise.to_json
@astronomy.sunset.to_json
@condition.temperature.to_json
@hourly.to_json
