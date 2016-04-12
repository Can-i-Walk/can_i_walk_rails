require 'httparty'

class Hourly
  def initialize(latitude, longitude)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/hourly/q/#{latitude},#{longitude}.json")
  end

end
