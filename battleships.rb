require 'sinatra'
require_relative 'helpers/init'
require_relative 'routes/init'
require_relative 'lib/game'

class BattleShips < Sinatra::Application

	configure do
		 	@@games =[]
	end

	 def initialize
  	super
	 end

	 def games
	 	@@games
	 end

enable :sessions
set :session_secret, "cedvjrnvoirgbruvgovieirvjerobge"


end

