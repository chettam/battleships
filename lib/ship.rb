
class Ship

	SHIP_TYPE = {
		"Aircraft Carrier" => 5,
		"Battleship" => 4,
		"Submarine" => 3,
		"Destroyers" => 3,
		"Cruiser" => 2
	}

	attr_accessor :name, :type

	def initialize(name, type)
		@name = name
		@type = type
	end

	def length
		SHIP_TYPE[type]
	end


end