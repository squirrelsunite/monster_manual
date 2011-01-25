class CreateMovements < ActiveRecord::Migration
  def self.up
    create_table :movements do |t|
      t.string :movement_type
      t.integer :speed
      t.references :monster

      t.timestamps
    end
  end

  def self.down
    drop_table :movements
  end
end
