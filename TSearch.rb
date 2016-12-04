require Twitter


 client = Twitter::REST::Client.new do |config|
      config.consumer_key        = q6YVpFPdsdSZ0xr57Y00dvjpP
      config.consumer_secret     = nce4C4FL3QreA00chktYInrXNVd3gM4LX1fk9Zy9PpW7H3bOrK
      config.access_token        = 804940698684256256-xccKdwwhoErpxCZ0vqOgelB5x8CSQzd
      config.access_token_secret = aN7S2ysSNE9l0QbzPZKecgmtJt6VftpysanPg1QcKGzQ4
 end

 client.update(testtest)
