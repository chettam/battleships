require 'sinatra'
require_relative 'helpers/init'
require_relative 'routes/init'
require_relative 'lib/game'

class BattleShips < Sinatra::Application

	attr_accessor :games

	 def initialize
  	super
	 	@games =[]
	 end

enable :sessions
set :session_secret, "cedvjrnvoirgbruvgovieirvjerobge"


end

