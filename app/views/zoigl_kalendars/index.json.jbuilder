json.array!(@zoigl_kalendars) do |zoigl_kalendar|
  json.extract! zoigl_kalendar, :id, :begin, :end, :description, :zoigl_stube_id
  json.url zoigl_kalendar_url(zoigl_kalendar, format: :json)
end
