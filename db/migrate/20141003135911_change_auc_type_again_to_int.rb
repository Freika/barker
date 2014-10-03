class ChangeAucTypeAgainToInt < ActiveRecord::Migration
  def change
    change_column :auction_items, :auc, :'integer USING CAST(auc AS int)'
  end
end
