require_relative 'grid'

class Game 

	attr_accessor :player_a,:player_b

	def initialize
		@player_a = Player.new
		@player_b = Player.new
	end
end