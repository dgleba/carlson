json.array!(@tr_types) do |tr_type|
  json.extract! tr_type, :id, :name, :active_status, :sort
  json.url tr_type_url(tr_type, format: :json)
end
