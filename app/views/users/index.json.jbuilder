json.users(@users) do |user|
  json.extract! user, :id, :token, :password_digest, :email, :name, :max_distance, :email_confirmed, :confirm_token
  json.url user_url(user, format: :json)
end
