# 2017_03_07

require 'twitter'
require 'net/http'
require 'uri'
require 'oauth'

puts " ユーザーIDを表示します"
print "検索ワードを入力 => "

search = gets.chomp

OpenSSL::SSL::VERIFY_PEER

consumer_key        = 'q6YVpFPdsdSZ0xr57Y00dvjpP'
consumer_secret     = 'nce4C4FL3QreA00chktYInrXNVd3gM4LX1fk9Zy9PpW7H3bOrK'
access_token        = '804940698684256256-ASzNNL5KJvWzVhXIMZep9W9uuCpJ8UL'
access_token_secret = '0FY9KuD8l3CJD1crw2wiDJK3vGn1obFMomzITosM5Z8PM'

consumer = OAuth::Consumer.new(
    consumer_key,
    consumer_secret,
    site:'https://api.twitter.com/'
)

endpoint = OAuth::AccessToken.new(consumer, access_token, access_token_secret)

str = URI.encode_www_form_component("#{search}")

uri = ("https://api.twitter.com/1.1/users/search.json?q=" + str + "&count=3")

response = endpoint.get(uri)
 result = JSON.parse(response.body)

ary = result.to_s.split(",")

 ary.each do |line|
   if ( /"id"=>/ =~ line ) && ( line.size <= 18 )
     puts line
   end
 end
