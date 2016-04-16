json.suggestions @suggestion.shuffle.take(6).each do |s|
  json.destinations s.place_name
end
