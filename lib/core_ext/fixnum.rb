class Fixnum
	def to_signed_s
		if self < 0
			to_s
		else
			"+#{to_s}"
		end
	end
end