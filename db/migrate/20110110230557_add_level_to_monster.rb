class AddLevelToMonster < ActiveRecord::Migration
  def self.up
    add_column :monsters, :level, :integer
  end

  def self.down
    remove_column :monsters, :level
  end
end
