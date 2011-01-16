class AddRaceIdToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :race_id, :integer
  end

  def self.down
    remove_column :monsters, :race_id
  end
end
