# need to extend the Battleship class with the route for welcome
class BattleShips < Sinatra::Application
get '/' do
  erb :welcome
end
	
end