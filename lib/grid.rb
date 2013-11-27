require_relative "cell"

class Grid

	attr_accessor :cells
	#private :cells

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

	def vertical_cells(origin,length)
		length.times.inject([]) do |array,n|
			cell =  cells.slice(origin[0]+n).slice(origin[1])
			!cell.empty? ? return : array << cell
		end

	end

	def horizontal_cells(origin,length)
		length.times.inject([]) do |array,n| 
			cell  = cells.slice(origin[0]).slice(origin[1]+n)
			!cell.empty? ? return : array << cell
		end

	end
end