json.array!(@tr_programs) do |tr_program|
  json.extract! tr_program, :id, :name, :active_status, :sort
  json.url tr_program_url(tr_program, format: :json)
end
