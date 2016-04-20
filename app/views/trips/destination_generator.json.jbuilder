json.suggestions @suggestions.each do |s|
  json.destinations s.place_name
end
