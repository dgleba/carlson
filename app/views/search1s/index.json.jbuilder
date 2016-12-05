json.array!(@search1s) do |search1|
  json.extract! search1, :id, :clocknum, :employee, :training_date, :course_name, :id, :training_record_id
  json.url search1_url(search1, format: :json)
end
