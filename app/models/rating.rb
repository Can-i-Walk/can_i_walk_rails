class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :place

  def self.average_cane(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(user: :ratings).where("users.accessibility_type = 'Cane'").average("ratings.accessibility_rating")
    if ratings
      ratings.round
    end
  end

  def self.average_wheelchair(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(user: :ratings).where("users.accessibility_type = 'Wheelchair'").average("ratings.accessibility_rating")
    if ratings
      ratings.round
    end
  end

  def self.average_walker(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(user: :ratings).where("users.accessibility_type = 'Walker'").average("ratings.accessibility_rating")
    if ratings
      ratings.round
    end
  end

  def self.average_scooter(lat, long)
    ratings = Place.within(0.25, :origin => [lat, long]).joins(user: :ratings).where("users.accessibility_type = 'Scooter'").average("ratings.accessibility_rating")
    if ratings
      ratings.round
    end
  end

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
