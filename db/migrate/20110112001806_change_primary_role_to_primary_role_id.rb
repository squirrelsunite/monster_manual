class ChangePrimaryRoleToPrimaryRoleId < ActiveRecord::Migration
  def self.up
      change_table :monsters do |t|
        t.remove :role
        t.integer :role_id
      end
    end
    def self.down
      change_table :monsters do |t|
        t.remove :role_id
        t.string :role
      end
    end
end
