class AddPerceptionToMonster < ActiveRecord::Migration
  def self.up
    add_column :monsters, :perception, :integer
  end

  def self.down
    remove_column :monsters, :perception
  end
end
