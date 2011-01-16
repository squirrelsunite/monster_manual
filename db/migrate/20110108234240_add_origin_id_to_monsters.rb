class AddOriginIdToMonsters < ActiveRecord::Migration
  def self.up
    add_column :monsters, :origin_id, :integer
  end

  def self.down
    remove_column :monsters, :origin_id
  end
end
