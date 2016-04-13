require 'securerandom'

class User < ActiveRecord::Base
  has_many :session_tokens
  has_many :ratings
  has_many :trips
  has_many :places
  has_many :trip_points, through: :trips

  # before_create :generate_token
  before_create :confirmation_token

  validates :email, presence: true, uniqueness: true

  validates :password, presence: true, on: :create

  has_secure_password

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

  def favorite_places
    trip_points.where(place_type: "Favorite Places").map &:place
  end

  def generate_token
    self.token = SecureRandom.urlsafe_base64.to_s
  end


  private def confirmation_token
    if self.confirm_token.blank?
      self.confirm_token = SecureRandom.urlsafe_base64.to_s
    end
  end
end
