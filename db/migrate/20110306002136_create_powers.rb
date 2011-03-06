class CreatePowers < ActiveRecord::Migration
  def self.up
    create_table :powers do |t|
      t.string :name
      t.string :source
      t.string :power_type
      t.integer :level
      t.text :flavor_text
      t.string :usage
      t.string :action_type
      t.text :trigger
      t.string :attack_type
      t.string :attack_range
      t.integer :attack_range_value
      t.integer :area_range_value
      t.text :prerequisite
      t.text :requirement
      t.text :target
      t.string :attack_ability
      t.integer :attack_modifier
      t.string :attack_defense
      t.text :hit
      t.text :miss
      t.text :effect
      t.string :sustain_usage
      t.text :sustain_effect
      t.text :power_special
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :powers
  end
end
