json.extract! user, :id, :user_id, :library_id, :name, :surname, :pesel, :created_at, :updated_at
json.url user_url(user, format: :json)
