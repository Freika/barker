namespace :auctions do

  desc "fetch all current auctions items to database"
  namespace :items do
    desc "fetch_razuvious"
    task :fetch_razuvious => :environment do
      Auction.get_current_items("razuvious")
    end

    desc "fetch_grom"
    task :fetch_grom => :environment do
      Auction.get_current_items("grom")
    end

    desc "fetch_greymane"
    task :fetch_greymane => :environment do
      Auction.get_current_items("greymane")
    end

    desc "fetch_gordunni"
    task :fetch_gordunni => :environment do
      Auction.get_current_items("gordunni")
    end

    desc "fetch_goldrinn"
    task :fetch_goldrinn => :environment do
      Auction.get_current_items("goldrinn")
    end

    desc "fetch_galakrond"
    task :fetch_galakrond => :environment do
      Auction.get_current_items("galakrond")
    end

    desc "fetch_fordragon"
    task :fetch_fordragon => :environment do
      Auction.get_current_items("fordragon")
    end

    desc "fetch_eversong"
    task :fetch_eversong => :environment do
      Auction.get_current_items("eversong")
    end

    desc "fetch_deepholm"
    task :fetch_deepholm => :environment do
      Auction.get_current_items("deepholm")
    end

    desc "fetch_deathweaver"
    task :fetch_deathweaver => :environment do
      Auction.get_current_items("deathweaver")
    end

    desc "fetch_deathguard"
    task :fetch_deathguard => :environment do
      Auction.get_current_items("deathguard")
    end

    desc "fetch_boreantundra"
    task :fetch_boreantundra => :environment do
      Auction.get_current_items("borean-tundra")
    end

    desc "fetch_bootybay"
    task :fetch_bootybay => :environment do
      Auction.get_current_items("booty-bay")
    end

    desc "fetch_blackscar"
    task :fetch_blackscar => :environment do
      Auction.get_current_items("blackscar")
    end

    desc "fetch_ashenvale"
    task :fetch_ashenvale => :environment do
      Auction.get_current_items("ashenvale")
    end

    desc "fetch_thermaplugg"
    task :fetch_thermaplugg => :environment do
      Auction.get_current_items("thermaplugg")
    end

    desc "fetch_azuregos"
    task :fetch_azuregos => :environment do
      Auction.get_current_items("azuregos")
    end

    desc "fetch_soulflayer"
    task :fetch_soulflayer => :environment do
      Auction.get_current_items("soulflayer")
    end

    desc "fetch_lichking"
    task :fetch_lichking => :environment do
      Auction.get_current_items("lich-king")
    end

    desc "fetch_howlingfjord"
    task :fetch_howlingfjord => :environment do
      Auction.get_current_items("howling-fjord")
    end

    #make items expire
    desc "expire razuvious items"
    task :expire_razuvious => :environment do
      AuctionItem.set_expired("razuvious")
    end

    desc "expire grom items"
    task :expire_grom => :environment do
      AuctionItem.set_expired("grom")
    end

    desc "expire greymane items"
    task :expire_greymane => :environment do
      AuctionItem.set_expired("greymane")
    end

    desc "expire gordunni items"
    task :expire_gordunni => :environment do
      AuctionItem.set_expired("gordunni")
    end

    desc "expire goldrinn items"
    task :expire_goldrinn => :environment do
      AuctionItem.set_expired("goldrinn")
    end

    desc "expire galakrond items"
    task :expire_galakrond => :environment do
      AuctionItem.set_expired("galakrond")
    end

    desc "expire fordragon items"
    task :expire_fordragon => :environment do
      AuctionItem.set_expired("fordragon")
    end

    desc "expire eversong items"
    task :expire_eversong => :environment do
      AuctionItem.set_expired("eversong")
    end

    desc "expire deepholm items"
    task :expire_deepholm => :environment do
      AuctionItem.set_expired("deepholm")
    end

    desc "expire deathweaver items"
    task :expire_deathweaver => :environment do
      AuctionItem.set_expired("deathweaver")
    end

    desc "expire deathguard items"
    task :expire_deathguard => :environment do
      AuctionItem.set_expired("deathguard")
    end

    desc "boreantundra"
    task :expire_boreantundra => :environment do
      AuctionItem.set_expired("borean-tundra")
    end

    desc "bootybay"
    task :expire_bootybay => :environment do
      AuctionItem.set_expired("booty-bay")
    end

    desc "blackscar"
    task :expire_blackscar => :environment do
      AuctionItem.set_expired("blackscar")
    end

    desc "ashenvale"
    task :expire_ashenvale => :environment do
      AuctionItem.set_expired("ashenvale")
    end

    desc "thermaplugg"
    task :expire_thermaplugg => :environment do
      AuctionItem.set_expired("thermaplugg")
    end

    desc "azuregos"
    task :azuregos => :environment do
      AuctionItem.set_expired("azuregos")
    end

    desc "soulflayer"
    task :soulflayer => :environment do
      AuctionItem.set_expired("soulflayer")
    end

    desc "lichking"
    task :lichking => :environment do
      AuctionItem.set_expired("lich-king")
    end

    desc "howlingfjord"
    task :howlingfjord => :environment do
      AuctionItem.set_expired("howling-fjord")
    end
  end

end
