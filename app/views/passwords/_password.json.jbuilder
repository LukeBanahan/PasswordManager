json.extract! password, :id, :website, :username, :password, :created_at, :updated_at
json.url password_url(password, format: :json)
