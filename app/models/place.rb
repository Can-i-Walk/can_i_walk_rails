class Place < ActiveRecord::Base
  has_many :ratings
  has_many :trip_points

  belongs_to :user

  acts_as_mappable :default_units => :miles,
                   :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude


  def nearby_places(radius, origin_lat, origin_long)
    within(radius, :origin => [origin_lat, origin_long])
  end

  def self.suggest_places(max_distance, origin_lat, origin_long)
    range = ((max_distance/3).round)..max_distance
    Place.in_range(range, :origin => [origin_lat, origin_long]).joins(:trip_points).where("place_type = 'Destination'")
  end

end
