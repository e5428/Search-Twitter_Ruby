# 2016_12_19

require 'rubygems'
require 'twitter'
require 'oauth'
require 'json'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

 #client = Twitter::REST::Client.new do |config|
 #     config.consumer_key        = "q6YVpFPdsdSZ0xr57Y00dvjpP"
 #     config.consumer_secret     = "nce4C4FL3QreA00chktYInrXNVd3gM4LX1fk9Zy9PpW7H3bOrK"
 #     config.access_token        = "804940698684256256-ASzNNL5KJvWzVhXIMZep9W9uuCpJ8UL"
 #     config.access_token_secret = "0FY9KuD8l3CJD1crw2wiDJK3vGn1obFMomzITosM5Z8PM"
 #end

# puts "#{client.user_search("高知高専")}"

# Net::HTTP.get_print(URI.parse('https://api.twitter.com/1.1/users/lookup.json?description=twitter'))

consumer_key   =  'q6YVpFPdsdSZ0xr57Y00dvjpP'
consumer_secret  =  'nce4C4FL3QreA00chktYInrXNVd3gM4LX1fk9Zy9PpW7H3bOrK'
access_token   =  '804940698684256256-ASzNNL5KJvWzVhXIMZep9W9uuCpJ8UL'
access_token_secret   =  '0FY9KuD8l3CJD1crw2wiDJK3vGn1obFMomzITosM5Z8PM'


consumer = OAuth::Consumer.new(consumer_key,consumer_secret,
                               {
                                   :site          =>  'http://api.twitter.com' ,
                                   :scheme    =>  :header
                               }
)

token_hash = {
    :access_token               =>  access_token,
    :access_token_secret    =>  :header
}

request_token = OAuth::AccessToken.from_hash(consumer,token_hash)

 response = request_token.request(:get, 'https://api.twitter.com/1.1/users/lookup.json?q=twitter')

tweethash = JSON.parse(response.body)

puts tweethash
