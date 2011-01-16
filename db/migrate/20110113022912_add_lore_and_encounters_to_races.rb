class AddLoreAndEncountersToRaces < ActiveRecord::Migration
  def self.up
    add_column :races, :lore, :text
    add_column :races, :enounters, :text
  end

  def self.down
    remove_column :races, :enounters
    remove_column :races, :lore
  end
end
