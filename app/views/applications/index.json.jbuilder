json.array!(@applications) do |application|
  json.extract! application, :id, :name, :description, :image, :bun
  json.url application_url(application, format: :json)
end
