class RemoveBidAndByuoutAndAucFromAuctionItems < ActiveRecord::Migration
  def change
    remove_column :auction_items, :bid
    remove_column :auction_items, :buyout
    remove_column :auction_items, :auc
  end
end
