json.array!(@users) do |user|
  json.extract! user, :id, :u_name, :u_email, :u_password, :u_picture
  json.url user_url(user, format: :json)
end
