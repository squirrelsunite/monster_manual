class Race < ActiveRecord::Base
  has_many :monsters
  default_scope :order => "name"
  validates :name, :description, :presence => true
  def to_s
    name
  end
  def self.skills
    ["Acrobatics", "Arcana", "Athletics", "Bluff", "Diplomacy", "Dungeoneering", "Endurance", "Heal", "History", "Insight", "Intimidate", "Nature", "Perception", "Religion", "Stealth", "Streetwise", "Thievery"]
  end
end
