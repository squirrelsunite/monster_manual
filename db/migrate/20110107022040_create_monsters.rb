class CreateMonsters < ActiveRecord::Migration
  def self.up
    create_table :monsters do |t|
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :hit_points
      t.integer :armor_class
      t.integer :fortitude
      t.integer :reflex
      t.integer :will

      t.timestamps
    end
  end

  def self.down
    drop_table :monsters
  end
end
