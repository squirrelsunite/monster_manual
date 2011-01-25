class RemoveMovementTypeFromMonsters < ActiveRecord::Migration
  def self.up
  	remove_column :monsters, :movement_type
  end

  def self.down
  	add_column :monsters, :movement_type, :string
  end
end
