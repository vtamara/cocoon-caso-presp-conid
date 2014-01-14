json.array!(@presponsables) do |presponsable|
  json.extract! presponsable, :id, :nombre
  json.url presponsable_url(presponsable, format: :json)
end
