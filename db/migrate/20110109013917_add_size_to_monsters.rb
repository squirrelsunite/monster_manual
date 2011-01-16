class AddSizeToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :size, :string
  end

  def self.down
    remove_column :monsters, :size
  end
end
