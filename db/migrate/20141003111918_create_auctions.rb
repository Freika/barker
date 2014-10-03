class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :realm_slug
      t.string :realm_name

      t.timestamps
    end
  end
end
