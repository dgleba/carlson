json.array!(@search_tests) do |search_test|
  json.extract! search_test, :id, :clocknum, :employee, :training_date, :course_name, :id, :training_record_id
  json.url search_test_url(search_test, format: :json)
end
