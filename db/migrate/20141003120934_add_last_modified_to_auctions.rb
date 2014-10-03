class AddLastModifiedToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :last_modified, :integer
  end
end
