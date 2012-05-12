class CreateConfigurationsTickersJoinTable < ActiveRecord::Migration
  def up
    create_table :configurations_tickers, :id => false do |t|
      t.integer :configuration_id
      t.integer :ticker_id
    end
  end

  def down
    drop_table :configurations_tickers
  end
end
