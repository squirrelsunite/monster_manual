class CreateEncounters < ActiveRecord::Migration
  def self.up
    create_table :encounters do |t|
      t.string :name
      t.boolean :active
      t.integer :original_encounter_id

      t.timestamps
    end
  end

  def self.down
    drop_table :encounters
  end
end
