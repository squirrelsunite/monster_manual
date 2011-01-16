class AddDescriptionToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :description, :text
  end

  def self.down
    remove_column :monsters, :description
  end
end
