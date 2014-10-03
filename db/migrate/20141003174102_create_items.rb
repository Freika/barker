class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :name
      t.integer :quality
      t.integer :item_class

      t.timestamps
    end
  end
end
