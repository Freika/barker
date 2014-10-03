class ChangeLastModifiedTypeToString < ActiveRecord::Migration
  def change
    change_column :auctions, :last_modified, :string
  end
end
