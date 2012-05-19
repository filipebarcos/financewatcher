require 'excelsior'
require 'httparty'

class YahooQuotes
  include HTTParty

  def initialize
    @base_uri = "http://finance.yahoo.com/d/quotes.csv?s="
    @format_options = "&f=abb4b6c3c1dd1d2ehgsvxnm"
  end

  def fetch(tickers)
    quotes = []
    Excelsior::Reader.rows(HTTParty.get(@base_uri + tickers + @format_options).body) do |row|
      quotes << Quotes.new({
        :ask => row[0],
        :bid => row[1],
        :book_value => row[2],
        :bid_size => row[3],
        :comission => row[4],
        :change => row[5],
        :dividend => row[6],
        :last_trade_date => row[7],
        :earnings => row[8],
        :days_high => row[9],
        :days_low => row[10],
        :symbol => row[11],
        :volume => row[12],
        :exchange => row[13],
        :name => row[14],
        :days_range => row[15]
      })
    end
  end

end