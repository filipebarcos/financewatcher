require 'httparty'

class YahooQuotes
  include HTTParty

  attr_accessor :format_options

  def initialize
    base_uri 'http://finance.yahoo.com/d/quotes.csv?s='
    format_options = "&f=abb4b6cc3c1dd1d2ehge7svxnm"
  end

  def self.fetch(tickers)
    get(base_uri + tickers + format_options)
  end

end