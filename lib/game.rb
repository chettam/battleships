require_relative 'player'

class Game 

	attr_accessor :players

	def initialize
		@players =[]
		create(2,5,10)
	end

	def looser
		@looser = players.select{|player| player.lost?}
	end

	def winner
		@winner = players.select{|player| !player.lost?}
	end

	def create(number_of_players,ship_number,grid_size)
		number_of_players.times do
			 players << Player.new(ship_number,grid_size)
		end
	end

end