class Place < ActiveRecord::Base
  has_many :ratings
  has_many :trip_points
end
