json.array!(@tr_training_employees) do |tr_training_employee|
  json.extract! tr_training_employee, :id, :output, :tr_training_record_id, :stf_employee_id
  json.url tr_training_employee_url(tr_training_employee, format: :json)
end
