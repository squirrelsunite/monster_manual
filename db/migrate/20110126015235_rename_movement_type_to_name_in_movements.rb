class RenameMovementTypeToNameInMovements < ActiveRecord::Migration
  def self.up
  	rename_column :movements, :movement_type, :name
  end

  def self.down
  	rename_column :movements, :name, :movement_type
  end
end
