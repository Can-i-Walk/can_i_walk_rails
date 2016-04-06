require 'securerandom'

class User < ActiveRecord::Base
  has_many :ratings
  has_many :trips
  has_many :places
  has_many :trip_points, through: :trips

  before_create :generate_token

  validates :email, presence: true, uniqueness: true

  validates :password, presence: true

  has_secure_password

  private def generate_token
  self.token = SecureRandom.hex
  end
end
