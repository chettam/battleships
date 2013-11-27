require_relative 'grid'

class Game 

	attr_accessor :grid_a, :grid_b

	def initialize
		@grid_a =Grid.new
		@grid_b =Grid.new
	end
end