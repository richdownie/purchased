class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases, :force => true do |t|
      t.string :name, :null => false
      t.integer :user_id, :null => false
      t.float :price, :default => 0, :null => false
      t.text :notes, :default => "", :null => false
      t.date :purchased_on
      t.timestamps
    end
    
    add_index :purchases, [:user_id], :name => "index_purchases_on_user_id"
  end

  def self.down
    remove_index :purchases, :name => :index_purchases_on_user_id
    drop_table :purchases
  end
end
