# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every 1.hour do
    rake "auctions:items:fetch_razuvious"
    rake "auctions:items:fetch_grom"
    rake "auctions:items:fetch_greymane"
    rake "auctions:items:fetch_gordunni"
    rake "auctions:items:fetch_goldrinn"
    rake "auctions:items:fetch_galakrond"
    rake "auctions:items:fetch_fordragon"
    rake "auctions:items:fetch_eversong"
    rake "auctions:items:fetch_deepholm"
    rake "auctions:items:fetch_deathweaver"
    rake "auctions:items:fetch_deathguard"
    rake "auctions:items:fetch_boreantundra"
    rake "auctions:items:fetch_bootybay"
    rake "auctions:items:fetch_blackscar"
    rake "auctions:items:fetch_ashenvale"
    rake "auctions:items:fetch_thermaplugg"
    rake "auctions:items:fetch_azuregos"
    rake "auctions:items:fetch_soulflayer"
    rake "auctions:items:fetch_lichking"
    rake "auctions:items:fetch_howlingfjord"

    rake "auctions:items:expire_razuvious"
    rake "auctions:items:expire_grom"
    rake "auctions:items:expire_greymane"
    rake "auctions:items:expire_gordunni"
    rake "auctions:items:expire_goldrinn"
    rake "auctions:items:expire_galakrond"
    rake "auctions:items:expire_fordragon"
    rake "auctions:items:expire_eversong"
    rake "auctions:items:expire_deepholm"
    rake "auctions:items:expire_deathweaver"
    rake "auctions:items:expire_deathguard"
    rake "auctions:items:expire_boreantundra"
    rake "auctions:items:expire_bootybay"
    rake "auctions:items:expire_blackscar"
    rake "auctions:items:expire_ashenvale"
    rake "auctions:items:expire_thermaplugg"
    rake "auctions:items:expire_azuregos"
    rake "auctions:items:expire_soulflayer"
    rake "auctions:items:expire_lichking"
    rake "auctions:items:expire_howlingfjord"
end