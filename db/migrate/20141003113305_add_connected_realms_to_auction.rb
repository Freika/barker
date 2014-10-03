class AddConnectedRealmsToAuction < ActiveRecord::Migration
  def change
    add_column :auctions, :connected_realms, :string
  end
end
