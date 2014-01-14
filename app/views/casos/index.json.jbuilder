json.array!(@casos) do |caso|
  json.extract! caso, :id, :fecha
  json.url caso_url(caso, format: :json)
end
