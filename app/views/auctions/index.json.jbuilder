json.array!(@auctions) do |auction|
  json.extract! auction, :id, :realm, :slug
  json.url auction_url(auction, format: :json)
end
