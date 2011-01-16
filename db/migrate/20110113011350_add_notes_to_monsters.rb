class AddNotesToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :note, :text
  end

  def self.down
    remove_column :monsters, :note
  end
end
