json.array!(@projects) do |project|
  json.extract! project, :id, :name, :parent_id, :client_id, :start_date, :due_date, :description, :member_ids
  json.url project_url(project, format: :json)
end
