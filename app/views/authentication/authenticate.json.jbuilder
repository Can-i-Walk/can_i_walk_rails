json.user [@current_user] do |u|
  json.extract! u, :id
  json.token @active_token
end
