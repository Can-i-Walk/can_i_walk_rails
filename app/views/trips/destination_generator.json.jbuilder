json.suggestions @suggestion.each do |s|
  json.destinations s.place_name
end
