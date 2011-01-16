class AddSpecialSensesToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :special_sense, :string
  end

  def self.down
    remove_column :monsters, :special_sense
  end
end
