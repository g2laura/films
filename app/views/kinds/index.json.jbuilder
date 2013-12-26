json.array!(@kinds) do |kind|
  json.extract! kind, :id, :movie_id, :name
  json.url kind_url(kind, format: :json)
end
