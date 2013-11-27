require_relative "cell"

class Grid

	attr_accessor :cells

	def initialize(size = 10)
		#cells = []
		@cells = create(size)
	end

	def create(size)
		size.times.inject([]) {|array,_| array << Array.new(10, Cell.new)}
	end

end