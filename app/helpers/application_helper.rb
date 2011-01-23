module ApplicationHelper

	def stat(monster, attribute)
		"#{monster[attribute]} (#{monster.modifier(attribute).to_signed_s})"
	end

end
