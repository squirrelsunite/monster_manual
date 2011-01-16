class ChangeRoleIdToPrimaryRoleId < ActiveRecord::Migration
  def self.up
    change_table :monsters do |t|
      t.remove :role_id
      t.integer :primary_role_id
    end
  end
  def self.down
    change_table :monsters do |t|
      t.remove :primary_role_id
      t.integer :role_id
    end
  end
end
