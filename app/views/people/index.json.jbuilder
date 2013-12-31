json.array!(@people) do |person|
  json.extract! person, :id, :name, :image, :job
  json.url person_url(person, format: :json)
end
