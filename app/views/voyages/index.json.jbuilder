json.array!(@voyages) do |voyage|
  json.extract! voyage, :id, :nom
  json.url voyage_url(voyage, format: :json)
end
