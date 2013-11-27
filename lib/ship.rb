
class Ship

	SHIP_TYPE = {
		"Aircraft Carrier" => 5,
		"Battleship" => 4,
		"Submarine" => 3,
		"Destroyers" => 3,
		"Cruiser" => 2
	}

	attr_accessor :name, :type, :cells

	def initialize(name, type)
		@name = name
		@type = type
		@cells = Array.new(length)
	end

	def length
		SHIP_TYPE[type]
	end

	def place(origin,direction,grid)
	  if direction == "vertical"
	 		@cells = find_vertical_cells(origin,grid)
	 	elsif  direction == "horizontal"
	 		@cells = find_horizontal_cells(origin,grid)
	 	end
	end

	def find_vertical_cells(origin,grid)
		length.times.inject([]) {|array,n| array << grid.cells.slice(origin[0]+n).slice(origin[1])}
	end

		def find_horizontal_cells(origin,grid)
		length.times.inject([]) {|array,n| array << grid.cells.slice(origin[0]).slice(origin[1]+n)}
	end



end