json.array!(@users) do |user|
  json.extract! user, :id, :token, :email, :name, :max_distance
  json.url user_url(user, format: :json)
end
