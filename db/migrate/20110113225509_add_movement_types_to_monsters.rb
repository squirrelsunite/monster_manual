class AddMovementTypesToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :movement_type, :string
  end

  def self.down
    remove_column :monsters, :movement_type
  end
end
