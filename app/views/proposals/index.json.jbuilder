json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :title, :description, :due_date
  json.url proposal_url(proposal, format: :json)
end
