class Astronomy
  def initialize(latitude, longitude)
    @response = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{latitude, longitude}.json")
  end

  def sunrise
    @astronomy["sun_phase"]["sunrise"]["hour"] + ":" + @astronomy["sun_phase"]["sunrise"]["minute"]
  end

  def sunset
    @astronomy["sun_phase"]["sunset"]["hour"] + ":" + @astronomy["sun_phase"]["sunset"]["minute"]
  end

end
