# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  item_id    :integer
#  name       :string(255)
#  quality    :integer
#  item_class :integer
#  created_at :datetime
#  updated_at :datetime
#

class Item < ActiveRecord::Base
  validates :item_id, uniqueness: true

  def self.add_to_db(item_id)
    Item.find_or_create_by(item_id: item_id) do |item|
      remote_item = HTTParty.get("https://eu.api.battle.net/wow/item/#{item_id}?locale=ru_RU&apikey=#{ENV['bnet_key']}
")
      item.item_id = item_id
      item.name = remote_item['name']
      item.quality = remote_item['quality']
      item.item_class = remote_item['itemClass']
    end
  end

end
