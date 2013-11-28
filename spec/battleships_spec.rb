require_relative '../battleships'
require 'rack/test'

def app
  Sinatra::Application
end

describe BattleShips do
	include Rack::Test::Methods

	context "should contain" do

	end

	context "should know" do
		
	end

	context "should by default" do
    it "should have a welcome page" do
        get '/'
        assert last_reponse.ok?
        assert_equal "Welcome to Battle Ships !", last_reponse.body
    end
	end
end