class Stock
  include ActiveModel::MassAssignmentSecurity

  attr_accessible :ask, :bid, :book_value, :bid_size
  attr_accessible :comission, :change, :dividend, :last_trade_date
  attr_accessible :earnings, :days_high, :days_low
  attr_accessible :symbol, :volume, :exchange
  attr_accessible :name, :days_range

end