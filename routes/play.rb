
get '/play' do 
	"Hello"
	player = params[:player]
	game_id = params[:game]

	@title = "Lets Play StarShips!"
	erb :play

end