class CreateAuctionItems < ActiveRecord::Migration
  def change
    create_table :auction_items do |t|
      t.integer :auc
      t.integer :item
      t.string :owner
      t.string :owner_realm
      t.integer :bid
      t.integer :buyout
      t.integer :quantity
      t.string :timeleft
      t.string :rand
      t.string :seed
      t.string :realm

      t.timestamps
    end
  end
end
