json.array!(@ratings) do |rating|
  json.extract! rating, :id, :user_id, :place_id, :ease_rating, :safety_rating, :enjoyability_rating, :accessibility_rating, :comment
  json.url rating_url(rating, format: :json)
end
