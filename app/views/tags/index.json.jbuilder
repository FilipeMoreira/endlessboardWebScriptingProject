json.array!(@tags) do |tag|
  json.extract! tag, :id, :t_name
  json.url tag_url(tag, format: :json)
end
