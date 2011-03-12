class Power < ActiveRecord::Base
  
  def to_s
    name
  end
  
  def self.power_types
    ['Attack', 'Utility', 'Item', 'Feat', 'Racial']
  end
  
  def self.usages
    ['At Will', 'Encounter', 'Daily']
  end
  
  def self.action_types
    [nil, 'Standard Action', 'Move Action', 'Minor Action', 'Free Action', 'Immediate Reaction', 'Immediate Interrupt', 'No Action']
  end
  
  def self.attack_types
    [nil, 'Melee', 'Ranged', 'Close', 'Area', 'Personal']
  end
  
  def self.attack_ranges
    [nil, 'Weapon', 'Adjacent', 'Touch', 'Sight', 'Burst', 'Blast', 'Wall']
  end
  
  def self.attack_abilities
    [nil, 'strength', 'dexterity', 'intelligence', 'constitution', 'wisdom', 'intelligence']
  end
  
  def self.defenses
    [nil, 'armor_class', 'fortitude', 'reflex', 'will']
  end
  
end
