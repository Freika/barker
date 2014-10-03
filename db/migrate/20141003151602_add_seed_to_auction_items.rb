class AddSeedToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :seed, :bigint
  end
end
