json.array!(@zoigl_stubes) do |zoigl_stube|
  json.extract! zoigl_stube, :id, :stube_name, :address, :city, :rbid, :founded, :score, :lat, :lon, :web, :hours, :description, :phone
  json.url zoigl_stube_url(zoigl_stube, format: :json)
end
