require 'httparty'

class Condition
  def initialize(latitude, longitude)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{latitude},#{longitude}.json")
  end

  def temperature
    @response["current_observation"]["temp_f"]
  end

  def weather
    @response["current_observation"]["weather"]
  end

  def weather_icon
    @response["current_observation"]["icon_url"]
  end

end
