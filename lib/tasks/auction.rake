namespace :auctions do

  desc "fetch all current auctions items to database"
  namespace :items do
    desc "razuvious"
    task :razuvious => :environment do
      Auction.get_current_items("razuvious")
    end

    desc "grom"
    task :grom => :environment do
      Auction.get_current_items("grom")
    end

    desc "greymane"
    task :greymane => :environment do
      Auction.get_current_items("greymane")
    end

    desc "gordunni"
    task :gordunni => :environment do
      Auction.get_current_items("gordunni")
    end

    desc "goldrinn"
    task :goldrinn => :environment do
      Auction.get_current_items("goldrinn")
    end

    desc "galakrond"
    task :galakrond => :environment do
      Auction.get_current_items("galakrond")
    end

    desc "fordragon"
    task :fordragon => :environment do
      Auction.get_current_items("fordragon")
    end

    desc "eversong"
    task :eversong => :environment do
      Auction.get_current_items("eversong")
    end

    desc "deepholm"
    task :deepholm => :environment do
      Auction.get_current_items("deepholm")
    end

    desc "deathweaver"
    task :deathweaver => :environment do
      Auction.get_current_items("deathweaver")
    end

    desc "deathguard"
    task :deathguard => :environment do
      Auction.get_current_items("deathguard")
    end

    desc "boreantundra"
    task :boreantundra => :environment do
      Auction.get_current_items("borean-tundra")
    end

    desc "bootybay"
    task :bootybay => :environment do
      Auction.get_current_items("booty-bay")
    end

    desc "blackscar"
    task :blackscar => :environment do
      Auction.get_current_items("blackscar")
    end

    desc "ashenvale"
    task :ashenvale => :environment do
      Auction.get_current_items("ashenvale")
    end

    desc "thermaplugg"
    task :thermaplugg => :environment do
      Auction.get_current_items("thermaplugg")
    end

    desc "azuregos"
    task :azuregos => :environment do
      Auction.get_current_items("azuregos")
    end

    desc "soulflayer"
    task :soulflayer => :environment do
      Auction.get_current_items("soulflayer")
    end

    desc "lichking"
    task :lichking => :environment do
      Auction.get_current_items("lich-king")
    end

    desc "howlingfjord"
    task :howlingfjord => :environment do
      Auction.get_current_items("howling-fjord")
    end

    #make items expire
    desc "razuvious"
    task :razuvious => :environment do
      AuctionItem.set_expired("razuvious")
    end

    desc "grom"
    task :grom => :environment do
      AuctionItem.set_expired("grom")
    end

    desc "greymane"
    task :greymane => :environment do
      AuctionItem.set_expired("greymane")
    end

    desc "gordunni"
    task :gordunni => :environment do
      AuctionItem.set_expired("gordunni")
    end

    desc "goldrinn"
    task :goldrinn => :environment do
      AuctionItem.set_expired("goldrinn")
    end

    desc "galakrond"
    task :galakrond => :environment do
      AuctionItem.set_expired("galakrond")
    end

    desc "fordragon"
    task :fordragon => :environment do
      AuctionItem.set_expired("fordragon")
    end

    desc "eversong"
    task :eversong => :environment do
      AuctionItem.set_expired("eversong")
    end

    desc "deepholm"
    task :deepholm => :environment do
      AuctionItem.set_expired("deepholm")
    end

    desc "deathweaver"
    task :deathweaver => :environment do
      AuctionItem.set_expired("deathweaver")
    end

    desc "deathguard"
    task :deathguard => :environment do
      AuctionItem.set_expired("deathguard")
    end

    desc "boreantundra"
    task :boreantundra => :environment do
      AuctionItem.set_expired("borean-tundra")
    end

    desc "bootybay"
    task :bootybay => :environment do
      AuctionItem.set_expired("booty-bay")
    end

    desc "blackscar"
    task :blackscar => :environment do
      AuctionItem.set_expired("blackscar")
    end

    desc "ashenvale"
    task :ashenvale => :environment do
      AuctionItem.set_expired("ashenvale")
    end

    desc "thermaplugg"
    task :thermaplugg => :environment do
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
