json.user do
  json.(@current_user, :name, :email, :authentication_token)
end
