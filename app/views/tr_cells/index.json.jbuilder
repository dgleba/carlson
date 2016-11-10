json.array!(@tr_cells) do |tr_cell|
  json.extract! tr_cell, :id, :name, :active_status, :sort
  json.url tr_cell_url(tr_cell, format: :json)
end
