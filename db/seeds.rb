# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

realms = [["Разувий", "razuvious"], ["Ревущий фьорд", "howling-fjord"], ["Король Лич", "lich-king"], ["Свежеватель душ", "soulflayer"], ["Азурегос", "azuregos"], ["Страж смерти", "deathguard"], ["Термоштепсель", "thermaplugg"], ["Ясеневый лес", "ashenvale"], ["Черный шрам", "blackscar"], ["Пиратская бухта", "booty-bay"], ["Борейская тундра", "borean-tundra"], ["Ткач смерти", "deathweaver"], ["Подземье", "deepholm"], ["Вечная песня", "eversong"], ["Дракономор", "fordragon"], ["Галакронд", "galakrond"], ["Голдринн", "goldrinn"], ["Гордунни", "gordunni"], ["Седогрив", "greymane"], ["Гром", "grom"]]

realms.each do |realm|
  Auction.create(realm_name: realm.first, realm_slug: realm.last)
end