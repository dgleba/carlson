json.array!(@trs) do |tr|
  json.extract! tr, :id, :name, :active_status, :sort
  json.url tr_url(tr, format: :json)
end
