require_relative "cell"

class Grid

	attr_accessor :cells
	#private :cells

	def initialize(size = 10)
		@cells = []
		create(size)
	end

	def create(size)
		size.to_i.times {|row_index| @cells << create_grid_row(row_index,size)}
	end

	def create_grid_row(row_index,size)
		size.to_i.times.inject([]) { |row, cell_index| row << Cell.new(row_index,cell_index)}
	end

	def vertical_cells(origin,length)
		length.to_i.times.inject([]) do |array,n|
			cell =  cells.slice(origin[0]+n).slice(origin[1])
			!cell.empty? || out_of_range?(origin[0],length)? return : array << cell
		end

	end

	def horizontal_cells(origin,length)
		length.to_i.times.inject([]) do |array,n| 
			cell  = cells.slice(origin[0]).slice(origin[1]+n)	
			!cell.empty? || out_of_range?(origin[1],length) ? return : array << cell
		end
	end

	def out_of_range?(origin, length)
		origin+length > cells.length - 1
	end
end