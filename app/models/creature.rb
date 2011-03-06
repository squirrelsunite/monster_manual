require "dice"

class Creature < ActiveRecord::Base
	belongs_to :monster
	
	def bloodied?
		hit_points <= monster.bloodied
	end
 
	def take_damage!(amount)
		self.hit_points -= amount
		self.hit_points = 0 if hit_points < 0
	end
	
	def incapacitated?
		hit_points == 0
	end
	
	def get_defaults_from_monster
		return unless monster
		self.hit_points = monster.hit_points
		self.initiative = D20.roll(monster.initiative)
	end
	
end
