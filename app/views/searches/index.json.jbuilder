json.array!(@searches) do |search|
  json.extract! search, :id, :clocknum, :employee, :training_date, :course_name
  json.url search_url(search, format: :json)
end
