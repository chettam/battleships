
class Ship

	SHIP_TYPE = {
		"Aircraft Carrier" => 5,
		"Battleship" => 4,
		"Submarine" => 3,
		"Destroyers" => 3,
		"Cruiser" => 2
	}

	attr_accessor :name, :type, :cells
	#private :cells

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
	 		@cells = grid.vertical_cells(origin,length)
	 	elsif  direction == "horizontal"
	 		@cells = grid.horizontal_cells(origin,length)
	 	end
	 	occupy_cells if !cells.nil?
	end

	def destroyed?
		cells.map {|cell| cell.hit?}.inject(:&)
	end

	def occupy_cells
		cells.each {|cell| cell.occupy}
	end
end