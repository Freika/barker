class AddAuctionJsonToAuction < ActiveRecord::Migration
  def change
    add_column :auctions, :auction_json, :string
  end
end
