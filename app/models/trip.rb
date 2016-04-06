class Trip < ActiveRecord::Base
  has_many :trip_points
  belongs_to :user
end
