class Condition
  def initialize(latitude, longitude)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{latitude, longitude}.json")
  end

  def temperature
    @conditions["current_observation"]["temp_f"]
  end

end
