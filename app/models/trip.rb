class Trip < ActiveRecord::Base
  has_many :trip_points
  belongs_to :user

  def finish
    completion = true
    walked_at = Time.now
  end
end
