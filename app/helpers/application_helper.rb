module ApplicationHelper

	def stat(monster, attribute)
		"#{monster[attribute]} (#{monster.modifier(attribute).to_signed_s})"
	end
	
	def capitalized_choices(choices)
		choices.map do |choice|
			[choice.to_s.capitalize, choice.to_s]
		end
	end

end
