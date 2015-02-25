json.array!(@countries) do |country|
  json.extract! country, :id, :name, :references, :flag, :motto, :population, :employment, :tax_rate, :wealth
  json.url country_url(country, format: :json)
end
