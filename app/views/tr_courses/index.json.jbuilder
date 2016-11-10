json.array!(@tr_courses) do |tr_course|
  json.extract! tr_course, :id, :name, :category, :description
  json.url tr_course_url(tr_course, format: :json)
end
