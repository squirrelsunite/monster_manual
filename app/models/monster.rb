class Monster < ActiveRecord::Base
	has_many :skills
	has_many :movements
	has_many :creatures
  belongs_to :primary_role
  belongs_to :race
  belongs_to :type
  belongs_to :origin
  has_and_belongs_to_many :keywords
  default_scope :order => "name"
  validates :strength, :dexterity, :constitution, :wisdom, :intelligence, :charisma, :hit_points, :armor_class, :fortitude, :reflex, :will, :level, :numericality => true, :presence => true
  validates :name, :presence => true
  def to_s
    name
  end
  def bloodied
    hit_points / 2
  end
  def modifier(ability)
  	(self[ability] - 10) / 2 + (level / 2)
	end
  def self.sizes
    ["Tiny", "Small", "Medium", "Large", "Huge", "Gargantuan"]
  end
  def self.primary_roles
    ["Artillery", "Brute", "Controller", "Lurker", "Skirmisher", "Soldier"]
  end
  def self.special_senses
    [nil, "Blindsight", "Darkvision", "Low-Light Vision", "Tremorsense"]
  end
  def self.languages
    ["Common", "Abyssal", "Deep Speech", "Draconic", "Dwarven", "Elven", "Giant", "Goblin", "Primordial", "Supernal", "Undercommon", "None"]
  end
  def self.alignments
    ["Lawful Good", "Good", "Unaligned", "Evil", "Chaotic Evil"]
  end
  def skill(name)
  	skills.to_a.find do |skill|
  	  skill.name == name
  	end
  end
  def update_skills(skills)
  	skills.each do |name, score|
  		skill = self.skill(name)
  		if skill
  			skill.update_attributes! :score => score
  		else
  			self.skills << Skill.new(:name => name, :score => score)
  		end
  	end
  end
  def movement(name)
  	movements.to_a.find do |movement|
  	  movement.name == name
  	end 
  end
  def update_movements(movements)
    self.movements.destroy_all
    update_movement_modes movements[:mode] || {}
    update_movement_types movements[:type] || {}
  end
  def update_movement_modes(modes)
    modes.each do |name, checked|
      next unless checked == 'true'
      self.movements << MovementMode.new(:name => name)
    end
  end
  def update_movement_types(types)
    types.each do |name, value|
      next unless value.present?
      self.movements << MovementType.new(:name => name, :speed => value)
    end
  end
end