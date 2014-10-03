class ChangeSeedToBigint < ActiveRecord::Migration
  def change
    change_column :auction_items, :seed, 'integer USING CAST(seed AS bigint)'
  end
end
