class ChangeBidAndByuoutToStrings < ActiveRecord::Migration
  def change
    change_column :auction_items, :bid, :string
    change_column :auction_items, :buyout, :string
    change_column :auction_items, :auc, :string
    change_column :auction_items, :seed, :string
  end
end
