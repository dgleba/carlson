json.array!(@tr_customers) do |tr_customer|
  json.extract! tr_customer, :id, :name, :active_status, :sort
  json.url tr_customer_url(tr_customer, format: :json)
end
