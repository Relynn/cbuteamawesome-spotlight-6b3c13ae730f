json.array!(@courses) do |course|
  json.extract! course, :id, :create, :register
  json.url course_url(course, format: :json)
end
