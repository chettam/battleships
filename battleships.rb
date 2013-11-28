require 'sinatra'
require_relative 'helpers/init'
require_relative 'routes/init'

class BattleShips < Sinatra::Application

enable :sessions
set :session_secret, "cedvjrnvoirgbruvgovieirvjerobge"

end

