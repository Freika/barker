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
    rake "auctions:items:razuvious"
    rake "auctions:items:grom"
    rake "auctions:items:greymane"
    rake "auctions:items:gordunni"
    rake "auctions:items:goldrinn"
    rake "auctions:items:galakrond"
    rake "auctions:items:fordragon"
    rake "auctions:items:eversong"
    rake "auctions:items:deepholm"
    rake "auctions:items:deathweaver"
    rake "auctions:items:deathguard"
    rake "auctions:items:boreantundra"
    rake "auctions:items:bootybay"
    rake "auctions:items:blackscar"
    rake "auctions:items:ashenvale"
    rake "auctions:items:thermaplugg"
    rake "auctions:items:azuregos"
    rake "auctions:items:soulflayer"
    rake "auctions:items:lichking"
    rake "auctions:items:howlingfjord"
end