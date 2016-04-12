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
end
