class CreateConfigurations < ActiveRecord::Migration
  def up
    create_table :configurations do |t|
      t.integer :user_id, :null => false
      t.timestamps
    end
    
    add_index :configurations, :user_id, :unique => true
  end

  def down
    drop_table :configurations
  end
end
