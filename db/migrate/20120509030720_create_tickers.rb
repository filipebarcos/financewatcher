class CreateTickers < ActiveRecord::Migration
  def up
    create_table :tickers do |t|
      t.string :name, :null => false
      t.string :code, :null => false
      t.timestamps
    end
    
    add_index :tickers, :code, :unique => true
    
  end

  def down
    drop_table :tickers
  end
end
