class CreateCreatures < ActiveRecord::Migration
  def self.up
    create_table :creatures do |t|
      t.string :name
      t.integer :hit_points
      t.integer :initiative
      t.integer :monster_id

      t.timestamps
    end
  end

  def self.down
    drop_table :creatures
  end
end
