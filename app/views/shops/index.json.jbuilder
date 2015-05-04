json.array!(@shops) do |shop|
  json.extract! shop, :id, :title, :comment, :rating
  json.url shop_url(shop, format: :json)
end
