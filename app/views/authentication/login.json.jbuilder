json.user [@current_user] do |u|
  json.extract! u, :id, :accessibility_type, :max_distance
  json.session_token @active_token, :user_id, :token
end
