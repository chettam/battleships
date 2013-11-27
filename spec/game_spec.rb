require_relative "../lib/game"

describe Game do

let(:game) {Game.new}

	context "should contain" do
		it "players" do
			expect(game.players[0]).not_to eq(nil)
			expect(game.players[1]).not_to eq(nil)
		end 
	end

	context "should know" do
		it "who won and who lost a game" do
			game.players[1].ships.each_with_index do |ship,index|
				ship.place([index,0],"horizontal",game.players[1].grid)
			end
			game.players[0].ships.each_with_index do |ship,index|
				ship.place([index,0],"horizontal",game.players[0].grid)
			end
			game.players[1].ships.each do |ship|
				ship.cells.each{ |cell| cell.bomb}
			end
			expect(game.winner).to eq(game.players[0])
			expect(game.looser).to eq(game.players[1])
		end
	end

	context "should by default" do
	 	
	end

end