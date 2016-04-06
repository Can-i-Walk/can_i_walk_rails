class Trip < ActiveRecord::Base
  has_many :trip_points
  belongs_to :user

  # def finish
  #   completion = true
  # end
  #
  # def walked_now
  #   walked_at = Time.now
  # end
end
