class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :auction_items, :auc, :'integer USING CAST(auc AS bigint)'
    change_column :auction_items, :item, 'integer USING CAST(item AS int)'
    change_column :auction_items, :bid, :'integer USING CAST(bid AS bigint)'
    change_column :auction_items, :buyout, :'integer USING CAST(buyout AS bigint)'
    change_column :auction_items, :quantity, 'integer USING CAST(quantity AS int)'
    change_column :auction_items, :rand, 'integer USING CAST(rand AS int)'
    change_column :auction_items, :seed, 'integer USING CAST(seed AS bigint)'
  end
end
