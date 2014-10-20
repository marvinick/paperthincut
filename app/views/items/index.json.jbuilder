json.array!(@items) do |item|
  json.extract! item, :id, :good_id, :basket_id
  json.url item_url(item, format: :json)
end
