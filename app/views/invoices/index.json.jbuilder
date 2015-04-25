json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :title, :due_date, :number, :description
  json.url invoice_url(invoice, format: :json)
end
