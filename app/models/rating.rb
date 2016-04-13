class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  def self.ease_average(lat, long)
    Place.within(5.25, :origin => [lat, long]).joins(:ratings).average("ratings.ease_rating")
  end

  def self.accessibility_average(lat, long)
    Place.within(5.25, :origin => [lat, long]).joins(:ratings).average("ratings.accessibility_rating")
  end

  def self.safety_average(lat, long)
    Place.within(5.25, :origin => [lat, long]).joins(:ratings).average("ratings.safety_rating")
  end

  def self.enjoyability_average(lat, long)
    Place.within(5.25, :origin => [lat, long]).joins(:ratings).average("ratings.enjoyability_rating")
  end


end
