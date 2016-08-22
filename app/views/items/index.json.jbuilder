json.array!(@items) do |item|
  json.extract! item, :id, :title, :ingredients, :price, :image_url
  json.url item_url(item, format: :json)
end
