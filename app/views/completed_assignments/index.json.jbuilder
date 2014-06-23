json.array!(@completed_assignments) do |completed_assignment|
  json.extract! completed_assignment, :id, :submit, :completion_date, :complete, :user_id_id, :assignment_id_id
  json.url completed_assignment_url(completed_assignment, format: :json)
end
