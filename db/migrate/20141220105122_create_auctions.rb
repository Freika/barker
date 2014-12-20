class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :realm
      t.string :slug

      t.timestamps null: false
    end
  end
end
