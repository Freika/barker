class Auction < ActiveRecord::Base

  def self.test
         AuctionItem.find_or_create_by(auc: "940697499") do |item|
            item.auc = "940697499"
            item.item = "52325"
            item.owner = "Энтальрия"
            item.owner_realm = "Гордунни"
            item.bid = "43700"
            item.buyout = "46000"
            item.quantity = "2"
            item.timeleft = "VERY_LONG"
            item.rand = "0"
            item.seed = "1725543168"
            item.faction = "alliance"
          end

  end

  def self.get_current_items
    Auction.all.each do |auction|
      realm = auction.realm_slug
      remote_auction = HTTParty.get("https://eu.api.battle.net/wow/auction/data/#{realm}?locale=ru_RU&apikey=#{ENV['bnet_key']}
")
      url = remote_auction['files'][0]['url']


      unless auction.last_modified == remote_auction['files'][0]['lastModified']
        auction.update(last_modified: remote_auction['files'][0]['lastModified'])
        auction_items = HTTParty.get(url)

        alliance = auction_items['alliance']['auctions']
        horde = auction_items['horde']['auctions']

        alliance.each do |auction_item|
          AuctionItem.find_or_create_by(auc: auction_item['auc']) do |item|
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
            item.faction = "alliance"
          end
        end

        horde.each do |auction_item|
          AuctionItem.find_or_create_by(auc: item['auc']) do |item|
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
            item.faction = "horde"
          end
        end
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
end