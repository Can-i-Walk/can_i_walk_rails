json.user [@current_user] do |u|
  json.extract! u, :token, :id
end
