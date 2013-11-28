require_relative 'player'

class Game 

	attr_accessor :players ,:name

	def initialize(number_of_players = 2,ship_number=5,grid_size=10,game_name="game1")
		@players =[]
		create(number_of_players,ship_number,grid_size,game_name)
	end

	def looser
		@looser = players.select{|player| player.lost?}.first
	end

	def winner
		@winner = players.select{|player| !player.lost?}.first
	end

	def create(number_of_players,ship_number,grid_size,game_name)
		@name = game_name
		number_of_players.to_i.times do
			 players << Player.new(ship_number,grid_size)
		end
	end

end