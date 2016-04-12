require 'httparty'

class Forecast
  def initialize(latitude, longitude)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast/q/#{latitude,longitude}.json")
  end

  def forecast
    @response["forecast"]
  end
end
