require 'excelsior'
require 'httparty'

class YahooQuotes
  include HTTParty

  def initialize
    @base_uri = "http://finance.yahoo.com/d/quotes.csv?s="
    @format_options = "&f=abb4b6c3c1dd1d2ehgsvxnm"
  end

  def fetch(tickers)
    Excelsior::Reader.rows(HTTParty.get(@base_uri + tickers + @format_options).body) do |row|
      puts row[0]
    end
  end

end