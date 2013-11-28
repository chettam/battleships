# need to extend the Battleship class with the route for welcome
class BattleShips < Sinatra::Application
get '/' do
	@title = "Welcome to Battleships!"

	@games = @@games
		puts @games.map(& :name).inspect
  erb :welcome

end
	
end