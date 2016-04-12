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


  json.alerts @alert.alerts
  json.sunrise @astronomy.sunrise
  json.sunset @astronomy.sunset
  json.temperature @condition.temperature
  # json.hourly_forcast @hourly

#
# json.games do
#   json.array! @game.body.each do |o|
#     json.title o["title"]
#     json.rating o["score"]
#     json.publisher o["publisher"]
#     json.platform o["platforms"]
#     if o["title"] == @boogie
#       json.streams @streamers
#     end
#   end
# end
