class Auction < ActiveRecord::Base


  def self.get_current_items
    Auction.all.each do |auction|
      realm = auction.realm_slug
      auction = HTTParty.get("https://eu.api.battle.net/wow/auction/data/#{realm}?locale=ru_RU&apikey=#{ENV['bnet_key']}
")
      a = Auction.where(realm_slug: realm).first
      last_modified = auction['files'][0]['lastModified']
      a.update(last_modified: last_modified)
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
