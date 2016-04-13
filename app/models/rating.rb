class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  def self.ease_average(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.ease_rating")
    if ratings
      ratings.round
    end
  end

  def self.accessibility_average(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.accessibility_rating")
    if ratings
      ratings.round
    end
  end

  def self.safety_average(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.safety_rating")
    if ratings
      ratings.round
    end
  end

  def self.enjoyability_average(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(:ratings).average("ratings.enjoyability_rating")
    if ratings
      ratings.round
    end
  end
end
