class AddExpiredToAuctionItem < ActiveRecord::Migration
  def change
    add_column :auction_items, :expired, :boolean, default: false
  end
end
