json.array!(@expenses) do |expense|
  json.extract! expense, :id, :title, :description, :due_date, :recurring, :rec_cycle
  json.url expense_url(expense, format: :json)
end
