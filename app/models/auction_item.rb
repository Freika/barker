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

  def self.add_to_db(auction_item, realm, faction)
    # item_found = AuctionItem.where(auc: auction_item['auc']).first_or_create do |item|
    item_found = AuctionItem.find_or_initialize_by(auc: auction_item['auc']) do |item|
      Item.add_to_db auction_item['item']

      item.auc = auction_item['auc']
      item.item = auction_item['item']
      item.owner = auction_item['owner']
      item.owner_realm = auction_item['ownerRealm']
      item.bid = auction_item['bid']
      item.buyout = auction_item['buyout']
      item.quantity = auction_item['quantity']
      item.timeleft = auction_item['timeLeft']
      item.rand = auction_item['rand']
      item.seed = auction_item['seed']
      item.realm = realm
      item.faction = faction
    end

    item_found.timeleft = auction_item['timeLeft']
    item_found.save!
  end

  def self.set_expired(realm)
    remote_auction = Auction.remote_auction(realm)
    items_timeleft_short = AuctionItem.where(timeleft: "SHORT").pluck(:auc)
    remote_aucs = remote_auction[:alliance].map { |x| x['auc'] }
      .concat remote_auction[:horde].map { |x| x['auc'] }
    intersection = remote_aucs & items_timeleft_short
    to_expire = intersection - items_timeleft_short

    to_expire.each do |auc|
      AuctionItem.where(auc: auc).first.update(expired: true)
    end

  end


end
