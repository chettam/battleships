class Cell

	attr_writer :empty

	def initialize
		@empty = true
		@bombed = false
	end

	def bombed?
		@bombed
	end

	def bomb
		@bombed = true
	end

	def empty?
		@empty
	end

	def hit?
		!empty? && bombed?
	end

end