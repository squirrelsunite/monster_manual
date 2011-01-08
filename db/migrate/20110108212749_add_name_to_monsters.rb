class AddNameToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :name, :string
  end

  def self.down
    remove_column :monsters, :name
  end
end
