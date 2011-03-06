class Power < ActiveRecord::Base
  
  def to_s
    name
  end
  
  def self.power_types
    ['attack', 'utility', 'item', 'feat', 'racial']
  end
  
  def self.usages
    ['At Will', 'Encounter', 'Daily']
  end
  
  def self.action_types
    [nil, 'standard action', 'move action', 'minor action', 'free action', 'immediate reaction', 'immediate interrupt', 'no action']
  end
  
  def self.attack_types
    [nil, 'Melee', 'Ranged', 'Close', 'Area', 'Personal']
  end
  
  def self.attack_ranges
    [nil, 'weapon', 'adjacent', 'touch', 'sight', 'burst', 'blast', 'wall']
  end
  
  def self.attack_abilities
    [nil, 'strength', 'dexterity', 'intelligence', 'constitution', 'wisdom', 'intelligence']
  end
  
  def self.defenses
    [nil, 'armor_class', 'fortitude', 'reflex', 'will']
  end
  
end
