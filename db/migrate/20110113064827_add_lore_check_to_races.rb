class AddLoreCheckToRaces < ActiveRecord::Migration
  def self.up
    add_column :races, :skill, :string
    add_column :races, :difficulty, :integer
  end

  def self.down
    remove_column :races, :difficulty
    remove_column :races, :skill
  end
end
