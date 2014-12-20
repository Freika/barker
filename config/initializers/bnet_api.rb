# config/initializers/bnet_api.rb
require 'bnet_api'

BnetApi.configure do |config|
  config.region = :eu
  config.locale = :ru_RU

  config.api_key = ENV['bnet_api']
  config.api_secret = ENV['bnet_secret']
end
