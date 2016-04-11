class Alert
  def initialize(latitude, longitude)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{latitude, longitude}.json")
  end

  def alerts
    @alert = @response["alerts"][0]
  end


end
