# == Schema Information
#
# Table name: auction_items
#
#  id          :integer          not null, primary key
#  item        :integer
#  owner       :string(255)
#  owner_realm :string(255)
#  quantity    :integer
#  timeleft    :string(255)
#  rand        :integer
#  realm       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  faction     :string(255)
#  seed        :integer
#  bid         :integer
#  buyout      :integer
#  auc         :integer
#  expired     :boolean          default(FALSE)
#

class AuctionItem < ActiveRecord::Base

  ITEM_CLASS = { consumnable: 0, container: 1, weapon: 2, gem: 3, armor: 4,
    reagent: 5, projectile: 6, trade_goods: 7, generic: 8, book: 9, money: 10,
    quiver: 11, quest: 12, key: 13, permanent: 14, junk: 15, glyph: 16 }
  ITEM_QUALITY = { poor: 0, common: 1, uncommon: 2, rare: 3, epic: 4,
    legendary: 5, artifact: 6, heirloom: 7 }

end
