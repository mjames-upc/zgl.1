json.array!(@zoigl_beers) do |zoigl_beer|
  json.extract! zoigl_beer, :id, :beername, :rbid, :rbbrewer, :alcohol, :description
  json.url zoigl_beer_url(zoigl_beer, format: :json)
end
