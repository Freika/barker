class AddFactionToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :faction, :string
  end
end
