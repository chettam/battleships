class BattleShips < Sinatra::Application
	get '/new_game' do
		@title = "Create a Game"
	  erb :new_game
	end

	def new_game(number_of_players,number_of_ships,grid_size)
		game = Game.new()
		game.create(number_of_players,number_of_ships,grid_size)
	end

	post '/new_game' do 
		number_of_players = params[:number_of_players]
		grid_size				  = params[:grid_size]
		number_of_ships   = params[:number_of_ships]
		@games << new_game(number_of_players,number_of_ships,grid_size)
		redirect to("/")
	end
	
end