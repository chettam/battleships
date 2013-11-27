require_relative "../lib/player"

describe Player do

let(:player) {Player.new}

	context "should contain" do
		it "a list of ships" do
			expect(player.ships).to be_a_kind_of(Array)
		end
		it "a maximum number of ships" do
			player.number_of_ships = 25
			expect(player.number_of_ships).to eq(25)
		end
		
	end

	context "should know" do

	end

	context "should by default" do
	 	it "have a grid" do
	 		expect(player.grid).not_to eq(nil)
	 	end
	end

end