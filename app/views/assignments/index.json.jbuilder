json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :assign_date, :due_date, :description, :teacher_id_id
  json.url assignment_url(assignment, format: :json)
end
