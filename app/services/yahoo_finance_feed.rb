require 'httparty'

class YahooFinanceFeed
  include HTTParty
  
  def self.fetch(tickers)
    get(base_uri + tickers)
  end
  
end