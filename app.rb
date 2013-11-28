require 'sinatra'

class BattleShips < Sinatra::Application

enable :sessions


require_relative 'helpers/init'
require_relative 'routes/init'
end