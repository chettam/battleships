require_relative 'grid'
require_relative 'ship'

class Player
	
	SHIP_LIST = ["Aircraft Carrier","Battleship","Submarine","Destroyers","Cruiser"]

	attr_accessor :grid, :ships, :number_of_ships

	def initialize(number_of_ships = 5,size_of_grid = 10)
		# puts size_of_grid
		@grid = Grid.new(size_of_grid)
		@ships =[]
		@number_of_ships = number_of_ships
		fill_ships
	end

	def fill_ships
		number_of_iteration = number_of_ships.to_i / SHIP_LIST.length
		number_of_iteration.times{ SHIP_LIST.each{ |ship| @ships << Ship.new(ship)}}
	end

	def lost?
		ships.select{|ship| !ship.destroyed? }.count == 0
	end



end
