json.array!(@leads) do |lead|
  json.extract! lead, :id, :title, :description
  json.url lead_url(lead, format: :json)
end
