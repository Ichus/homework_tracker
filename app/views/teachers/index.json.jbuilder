json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :username, :password_hash, :password_salt
  json.url teacher_url(teacher, format: :json)
end
