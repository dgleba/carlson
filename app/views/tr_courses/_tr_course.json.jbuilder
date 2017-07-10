json.extract! tr_course, :id, :name, :number, :category, :description, :active_status, :sort, :created_at, :updated_at
json.url tr_course_url(tr_course, format: :json)