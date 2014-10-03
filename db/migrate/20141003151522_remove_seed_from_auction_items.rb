class RemoveSeedFromAuctionItems < ActiveRecord::Migration
  def change
    remove_column :auction_items, :seed
  end
end
