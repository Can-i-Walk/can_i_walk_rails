class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  def self.ease_average(lat, long)
    Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.ease_rating").round
  end

  def self.accessibility_average(lat, long)
    Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.accessibility_rating").round
  end

  def self.safety_average(lat, long)
    Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.safety_rating").round
  end

  def self.enjoyability_average(lat, long)
    Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.enjoyability_rating").round
  end
end
