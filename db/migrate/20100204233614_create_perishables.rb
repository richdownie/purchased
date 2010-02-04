class CreatePerishables < ActiveRecord::Migration
  def self.up
    create_table :perishables do |t|
      t.string :what
      t.string :when
      t.string :where
      t.integer :warranty_months
      t.integer :warranty_years
      t.integer :how_much

      t.timestamps
    end
  end

  def self.down
    drop_table :perishables
  end
end
