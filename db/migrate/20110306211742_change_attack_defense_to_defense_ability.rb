class ChangeAttackDefenseToDefenseAbility < ActiveRecord::Migration
  def self.up
    rename_column :powers, :attack_defense, :defense
  end

  def self.down
    rename_column :powers, :defense, :attack_defense
  end
end
