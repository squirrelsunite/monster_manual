class AddPrimaryRoleToMonster < ActiveRecord::Migration
  def self.up
    add_column :monsters, :primary_role, :string
  end

  def self.down
    remove_column :monsters, :primary_role
  end
end
