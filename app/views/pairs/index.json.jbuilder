json.array!(@pairs) do |pair|
  json.extract! pair, :id, :members, :details
  json.url pair_url(pair, format: :json)
end
