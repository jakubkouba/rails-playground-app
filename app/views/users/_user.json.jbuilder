json.extract! user, :id, :name, :surname, :birth_date, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)
