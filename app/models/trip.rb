class Trip < ActiveRecord::Base
  has_many :trip_points
  belongs_to :user

  def finish
    self.completion = true
  end

  def walked_now
    self.walked_at = Time.now
  end
end
