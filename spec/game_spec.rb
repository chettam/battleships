require_relative "../lib/game"

describe Game do

let(:game) {Game.new}

	context "should contain" do
		
	end

	context "should know" do

	end

	context "should by default" do
	 	it "have a grid for each player" do
	 		expect(game.grid_a).not_to eq(nil)
	 		expect(game.grid_b).not_to eq(nil)
	 	end
	end

end