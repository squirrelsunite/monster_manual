class Skill < ActiveRecord::Base
	ABILITIES = {
		:acrobatics => :dexterity,
		:stealth => :dexterity,
		:thievery => :dexterity,
		:arcana => :intelligence,
		:history => :intelligence,
		:religion => :intelligence,
		:athletics => :strength,
		:bluff => :charisma,
		:diplomacy => :charisma,
		:intimidate => :charisma,
		:streetwise => :charisma,
		:dungeoneering => :wisdom,
		:heal => :wisdom,
		:insight => :wisdom,
		:nature => :wisdom,
		:perception => :wisdom,
		:endurance => :constitution
		}
		
	belongs_to :monster
	delegate :to_s, :to => :score
	def self.skills
    [:acrobatics, :arcana, :athletics, :bluff, :diplomacy, :dungeoneering, :endurance, :heal, :history, :insight, :intimidate, :nature, :perception, :religion, :stealth, :streetwise, :thievery]
  end
  def score_or_default
  	score || default_score
  end
  def default_score
  	monster.modifier ability
  end
  def ability
  	ABILITIES[name.to_sym]
  end
end
