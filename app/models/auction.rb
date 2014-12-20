class Auction < ActiveRecord::Base
  def self.get_realms
    realms = BnetApi::WoW.realm_status

    realms['realms'].each do |realm|
      if realm['locale'] == 'ru_RU'
        Auction.create(realm: realm['name'], slug: realm['slug'])
      end
    end
  end
end
