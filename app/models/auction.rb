class Auction < ActiveRecord::Base


  def get_current_items

  end

  def self.get_realms
    request = HTTParty.get("https://eu.api.battle.net/wow/realm/status?locale=ru_RU&apikey=#{ENV['bnet_key']}")

    request['realms'].each do |realm|
      if realm['locale'] == "ru_RU"
        Auction.create(realm_slug: realm['slug'], realm_name: realm['name'],
          connected_realms: realm['conntected_realms'])
      end
    end
  end
end
