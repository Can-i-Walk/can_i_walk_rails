json.array!(@trips) do |trip|
  json.extract! trip, :id, :user_id, :trip_name, :walked_at, :planned_at, :distance, :completion
  json.url trip_url(trip, format: :json)
end
