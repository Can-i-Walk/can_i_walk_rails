

class WeatherInfo
  attr_reader :conditions
  attr_reader :forecast
  attr_reader :alerts
  attr_reader :hourly
  attr_reader :astronomy

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
