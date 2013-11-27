require_relative "cell"

class Grid

	attr_accessor :cells

	def initialize(size = 10)
		@cells = []
		create(size)
	end

	def create(size)
		size.times {|row_index| @cells << create_grid_row(row_index,size)}
	end

	def create_grid_row(row_index,size)
		size.times.inject([]) { |row, cell_index| row << Cell.new(row_index,cell_index)}
	end

end