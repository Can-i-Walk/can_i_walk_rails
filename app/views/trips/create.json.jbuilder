# json.success true

json.trip [@trip] do |t|
  json.extract! t, :id
end
