class AddSpeedToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :speed, :integer
  end

  def self.down
    remove_column :monsters, :speed
  end
end
