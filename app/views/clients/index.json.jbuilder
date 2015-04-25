json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address, :email, :website, :phone, :mobile, :fax, :vat_number, :notes
  json.url client_url(client, format: :json)
end
