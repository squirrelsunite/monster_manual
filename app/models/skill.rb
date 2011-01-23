class Skill < ActiveRecord::Base
	belongs_to :monster
	delegate :to_s, :to => :score
	def self.skills
    [:acrobatics, :arcana, :athletics, :bluff, :diplomacy, :dungeoneering, :endurance, :heal, :history, :insight, :intimidate, :nature, :perception, :religion, :stealth, :streetwise, :thievery]
  end
end
