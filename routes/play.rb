# need to extend the Battleship class with the route for new_game
class BattleShips < Sinatra::Application
 def select_player(game_identifier,player_identifier)
 	 @@games.select{|game| game.identifier == game_identifier.to_i}.first.players.select{|a_player| a_player.identifier == player_identifier.to_i}.first
 end


	post '/play' do 
		player_identifier = params[:player]
		game_identifier = params[:game]
		current_player = select_player(game_identifier,player_identifier)
		current_player.take
		@title = "Lets Play StarShips!"
		erb :play

	end
end