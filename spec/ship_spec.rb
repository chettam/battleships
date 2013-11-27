require_relative "../lib/ship"

describe Ship do 
	let(:ship) {Ship.new('Evgeney','Battleship')}
	let(:grid) {Grid.new}
	context "should contain" do
		
		it "a name and type" do
			expect(ship.name).to eq('Evgeney')
			expect(ship.type).to eq('Battleship')
		end

		it "a length" do
			expect(ship.length).to eq(4)
		end
	end

	context "should know" do
		it "it's position (cells)" do 
			expect(ship.cells.length).to eq(4)
		end

		it "it's place on the grid" do 
			ship.place([0,0],"vertical",grid)
			expect(ship.cells).to eq([grid.cells[0][0],grid.cells[1][0],grid.cells[2][0],grid.cells[3][0]])
		end
	end

	context "should by default" do

	end
end