json.extract! user, :id, :first_name, :last_name, :mobile, :gender, :dob, :college, :about, :created_at, :updated_at
json.url user_url(user, format: :json)
