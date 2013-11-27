require_relative "../lib/game"

describe Game do

let(:game) {Game.new}

	context "should contain" do
		it "two players" do
			expect(game.player_a).not_to eq(nil)
			expect(game.player_b).not_to eq(nil)
		end 
	end

	context "should know" do
		it "if a game is won" do

		end
	end

	context "should by default" do
	 	
	end

end