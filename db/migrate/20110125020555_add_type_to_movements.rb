class AddTypeToMovements < ActiveRecord::Migration
  def self.up
    add_column :movements, :type, :string
  end

  def self.down
    remove_column :movements, :type
  end
end
