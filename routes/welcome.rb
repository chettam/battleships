# need to extend the Battleship class with the route for welcome
class BattleShips < Sinatra::Application
get '/' do
	@title = "Welcome to Battleships!"
  erb :welcome

end
	
end