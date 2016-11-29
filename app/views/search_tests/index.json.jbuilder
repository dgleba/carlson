json.array!(@search_tests) do |search_test|
  json.extract! search_test, :id, :clocknum, :employee, :training_date, :course_name
  json.url search_test_url(search_test, format: :json)
end
