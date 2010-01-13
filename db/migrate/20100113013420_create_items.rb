class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items, :force => true do |t|
      t.string :name, :null => false
      t.integer :user_id, :null => false
      t.float :price, :default => 0, :null => false
      t.text :notes, :default => "", :null => false
      t.date :purchased_on
      t.integer :warranty_years
      t.integer :warranty_months
      t.timestamps
    end
  end

  def self.down
    drop_table :purchases 
    drop_table :items
  end
end
