json.array!(@sites) do |site|
  json.extract! site, :id, :nom, :categorie, :adresse, :description, :latitude, :longitude, :tel, :web, :tarif, :reduction, :groupe, :audioguide, :guide, :avis
  json.url site_url(site, format: :json)
end
