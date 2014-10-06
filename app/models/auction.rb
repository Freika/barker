# == Schema Information
#
# Table name: auctions
#
#  id               :integer          not null, primary key
#  realm_slug       :string(255)
#  realm_name       :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  connected_realms :string(255)
#  last_modified    :string(255)
#

class Auction < ActiveRecord::Base
  require 'httparty'
  def amount_auction_items
    alliance = AuctionItem.where(realm: self.realm_slug, faction: "alliance").count
    horde = AuctionItem.where(realm: self.realm_slug, faction: "horde").count
    amount = { alliance: alliance, horde: horde }
  end

  def self.get_current_items(realm)
    auction = Auction.where(realm_slug: realm).first

    realm = auction.realm_slug
    # remote_auction для получения метки времени последнего обновления, заменить
    # на использование метода remote_auction
    remote_auction = HTTParty.get("https://eu.api.battle.net/wow/auction/data/#{realm}?locale=ru_RU&apikey=#{ENV['bnet_key']}")
    url = remote_auction['files'][0]['url']

    unless auction.last_modified == remote_auction['files'][0]['lastModified']
      auction.update last_modified: remote_auction['files'][0]['lastModified']
      auction_items = HTTParty.get(url)

      alliance = Auction.remote_auction(realm)[:alliance]
      horde = Auction.remote_auction(realm)[:horde]

      alliance.each do |auction_item|
        AuctionItem.add_to_db(auction_item, realm, "alliance")
      end

      horde.each do |auction_item|
        AuctionItem.add_to_db(auction_item, realm, "horde")
      end

    end
  end

  def self.get_realms
    request = HTTParty.get("https://eu.api.battle.net/wow/realm/status?locale=en_GB&apikey=#{ENV['bnet_key']}")

    request['realms'].each do |realm|
      if realm['locale'] == "ru_RU"
        case realm['name']
        when "Ashenvale"
          realm_name = "Ясеневый лес"
        when "Azuregos"
          realm_name = "Азурегос"
        when "Blackscar"
          realm_name = "Черный шрам"
        when "Booty Bay"
          realm_name = "Пиратская бухта"
        when "Borean Tundra"
          realm_name = "Борейская тундра"
        when "Deathguard"
          realm_name = "Страж смерти"
        when "Deathweaver"
          realm_name = "Ткач смерти"
        when "Deepholm"
          realm_name = "Подземье"
        when "Eversong"
          realm_name = "Вечная песня"
        when "Fordragon"
          realm_name = "Дракономор"
        when "Galakrond"
          realm_name = "Галакронд"
        when "Goldrinn"
          realm_name = "Голдринн"
        when "Gordunni"
          realm_name = "Гордунни"
        when "Greymane"
          realm_name = "Седогрив"
        when "Grom"
          realm_name = "Гром"
        when "Howling Fjord"
          realm_name = "Ревущий фьорд"
        when "Lich King"
          realm_name = "Король Лич"
        when "Razuvious"
          realm_name = "Разувий"
        when "Soulflayer"
          realm_name = "Свежеватель душ"
        when "Thermaplugg"
          realm_name = "Термоштепсель"
        else
          realm_name = nil
        end
        Auction.create(realm_slug: realm['slug'], realm_name: realm_name,
          connected_realms: realm['conntected_realms'])
      end
    end

  end

  def self.remote_auction(realm)
    remote_auction = HTTParty.get("https://eu.api.battle.net/wow/auction/data/#{realm}?locale=ru_RU&apikey=#{ENV['bnet_key']}")
    local_auction = Auction.where(realm_slug: realm).first

    unless local_auction.last_modified.to_i == remote_auction['files'][0]['lastModified']
      local_auction.update last_modified: remote_auction['files'][0]['lastModified']
      Auction.download_json(remote_auction['files'][0]['url'], realm)
      auction = HTTParty.get("http://barker.dev/auctions/#{realm}.json") # Сделать переменные окружения для адресов, грязно, но пока пойдет
    else
      auction = HTTParty.get("http://barker.dev/auctions/#{realm}.json")
    end

    auction_items = { alliance: auction['alliance']['auctions'],
     horde: auction['horde']['auctions'] }

  end

private

  def self.download_json(url, realm)
    url.slice! "http://eu.battle.net"
    Net::HTTP.start("eu.battle.net") do |http|
      resp = http.get(url)
      open("public/auctions/#{realm}.json", "wb") do |file|
        file.write(resp.body)
      end
    end
  end

end


