class Cell

	attr_writer :empty
	attr_accessor :position

	def initialize(vertical_position =0,horizontal_position=0)
		@empty = true
		@bombed = false
		@position = {:vertical => vertical_position, :horizontal => horizontal_position}
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