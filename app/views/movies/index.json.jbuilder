json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :year, :box, :format, :position
  json.url movie_url(movie, format: :json)
end
