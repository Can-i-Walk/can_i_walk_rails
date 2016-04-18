class SessionToken < ActiveRecord::Base
  belongs_to :user
  validates :token, uniqueness: true

  def self.cleanup_tokens
    SessionToken.where("created_at < ?", 1.day.ago).destroy_all
  end
end
