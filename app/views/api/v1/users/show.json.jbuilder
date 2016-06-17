json.user do
  json.(@user, :id, :name, :email, :activated, :admin, :created_at, :updated_at)
end
