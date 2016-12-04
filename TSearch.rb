require 'rubygems'
require 'twitter'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

 client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "q6YVpFPdsdSZ0xr57Y00dvjpP"
      config.consumer_secret     = "nce4C4FL3QreA00chktYInrXNVd3gM4LX1fk9Zy9PpW7H3bOrK"
      config.access_token        = "804940698684256256-ASzNNL5KJvWzVhXIMZep9W9uuCpJ8UL"
      config.access_token_secret = "0FY9KuD8l3CJD1crw2wiDJK3vGn1obFMomzITosM5Z8PM"
 end

# client.update("testtest")

puts "#{client.user_search("高知高専")}"
