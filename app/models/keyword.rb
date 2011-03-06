class Keyword < ActiveRecord::Base
  has_and_belongs_to_many :monsters
  default_scope :order => "name"

	def self.categories
		["Damage", "Creature", "Effect", "Accessory", "Power"].sort
	end

	categories.each do |category|
  	scope category.downcase, where(:category => category)
  end
  
end
