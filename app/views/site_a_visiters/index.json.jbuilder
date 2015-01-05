json.array!(@site_a_visiters) do |site_a_visiter|
  json.extract! site_a_visiter, :id, :nom_site, :nom_voyage
  json.url site_a_visiter_url(site_a_visiter, format: :json)
end
