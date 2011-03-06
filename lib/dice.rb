class D20
	def self.roll(modifier = 0)
		rand(20) + modifier + 1
	end
end