class AddInitiativeToMonster < ActiveRecord::Migration
  def self.up
    add_column :monsters, :initiative, :integer
  end

  def self.down
    remove_column :monsters, :initiative
  end
end
