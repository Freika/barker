class ChangeQualityAndItemClassForItem < ActiveRecord::Migration
  def change
    change_column :items, :quality, :integer
    change_column :items, :item_class, :integer
  end
end
