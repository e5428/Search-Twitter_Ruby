# 2016_12_22

require 'pp'
require 'twitter'
require 'net/http'
require 'uri'
require 'oauth'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

consumer_key = 'q6YVpFPdsdSZ0xr57Y00dvjpP'
consumer_secret = 'nce4C4FL3QreA00chktYInrXNVd3gM4LX1fk9Zy9PpW7H3bOrK'
access_token = '804940698684256256-ASzNNL5KJvWzVhXIMZep9W9uuCpJ8UL'
access_token_secret = '0FY9KuD8l3CJD1crw2wiDJK3vGn1obFMomzITosM5Z8PM'

consumer = OAuth::Consumer.new(
    consumer_key,
    consumer_secret,
    site:'https://api.twitter.com/'
)

endpoint = OAuth::AccessToken.new(consumer, access_token, access_token_secret)

response = endpoint.get('https://api.twitter.com/1.1/users/search.json?q=twitter')
result = JSON.parse(response.body)

# pp result

# result.each_line do |line|
#   if /id/ =~ line
#     puts line
#   end
# end

# TSearch.rb:29:in `<main>': undefined method `each_line' for #<Array:0x000000038e5af0> (NoMethodError)
#Did you mean?  each_index
#               each_slice
#               each
#               each_with_index
#               each_entry
#               each_cons

