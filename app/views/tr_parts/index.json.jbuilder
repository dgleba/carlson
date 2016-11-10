json.array!(@tr_parts) do |tr_part|
  json.extract! tr_part, :id, :name, :active_status, :sort
  json.url tr_part_url(tr_part, format: :json)
end
