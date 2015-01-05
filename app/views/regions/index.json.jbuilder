json.array!(@regions) do |region|
  json.extract! region, :id, :nom, :pays
  json.url region_url(region, format: :json)
end
