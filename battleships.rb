require 'sinatra'

class BattleShips < Sinatra::Application

enable :sessions

get '/' do
    erb :welcome
  end
require_relative 'helpers/init'
require_relative 'routes/init'
end