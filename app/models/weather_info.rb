class WeatherInfo
  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
    @conditions = Condition.new(latitude, longitude)
    @forecast = Forecast.new(latitude, longitude)
    @alerts = Alert.new(latitude, longitude)
    @hourly = Hourly.new(latitude, longitude)
    @astronomy = Astronomy.new(latitude, longitude)
  end
​
  def latitude
    @latitude
  end

  def longitude
    @longitude
  end
​
  def to_json
    {conditions: @conditions.to_json,
     forecast: @forecast.to_json,
     alerts: @alerts.to_json,
     hourly: @hourly.to_json,
     astronomy: @astronomy.to_json}
  end

end
