class AddBidBuyoutAucToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :bid, :bigint
    add_column :auction_items, :buyout, :bigint
    add_column :auction_items, :auc, :bigint
  end
end
