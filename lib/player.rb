class Player

	attr_accessor :grid, :ships, :number_of_ships

	def initialize(number_of_ships = 5,size_of_grid = 10)
		@grid = Grid.new(size_of_grid)
		@ships =[]
		@number_of_ships = number_of_ships
	end

end
