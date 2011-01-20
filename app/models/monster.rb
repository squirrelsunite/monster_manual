class Monster < ActiveRecord::Base
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
  def self.sizes
    ["Tiny", "Small", "Medium", "Large", "Huge", "Gargantuan"]
  end
  def self.primary_roles
    ["Artillery", "Brute", "Controller", "Lurker", "Skirmisher", "Soldier"]
  end
  def self.special_senses
    ["", "Blindsight", "Darkvision", "Low-Light Vision", "Tremorsense"]
  end
  def self.movement_types
    ["", "Burrow", "Climb", "Fly", "Swim"]
  end
  def self.languages
    ["Common", "Abyssal", "Deep Speech", "Draconic", "Dwarven", "Elven", "Giant", "Goblin", "Primordial", "Supernal", "Undercommon"]
  end
  def self.alignment
    ["Lawful Good", "Good", "Unaligned", "Evil", "Chaotic Evil"]
  end
end