class AddTypeIdToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :type_id, :integer
  end

  def self.down
    remove_column :monsters, :type_id
  end
end
