require_relative '../battleships'
require 'rack/test'

def app
  BattleShips
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
        expect(last_response).to be_ok
        expect(last_response.body).to include("Welcome to Battleships")
    end
	end
end