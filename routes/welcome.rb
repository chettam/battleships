# need to extend the Battleship class with the route for welcome
class BattleShips < Sinatra::Application

def prepare_games

	@game_list = @@games.map {|game| [game.name,game.identifier,game.players.select{|player| !player.taken? }] unless game.taken? }
	@game_list.delete_if{|game| game.nil?}
end

get '/' do
	@title = "Welcome to Battleships!"
	@list  = "<h2> List of current games :</h2>"
	@games = prepare_games unless @@games.nil? 
	puts @games
  erb :welcome
end
	
end