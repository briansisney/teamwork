json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :user_id, :client_id, :role_id, :start_date, :end_time
  json.url assignment_url(assignment, format: :json)
end
