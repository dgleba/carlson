json.array!(@stf_employees) do |stf_employee|
  json.extract! stf_employee, :id, :clocknum, :name, :active_status, :sort
  json.url stf_employee_url(stf_employee, format: :json)
end
