class ChangeAucType < ActiveRecord::Migration
  def change
    change_column :auction_items, :auc, :string
  end
end
