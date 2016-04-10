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

end
