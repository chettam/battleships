require_relative "../lib/ship"

describe Ship do 
	let(:ship) {Ship.send(:public, :cells); Ship.new('Battleship')}
	let(:ship2) {Ship.send(:public, :cells); Ship.new('Submarine')}
	let(:grid) {Grid.send(:public, :cells); Grid.new}
	context "should contain" do
		
		it "a name and type" do
			ship.name = "Evgeney"
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

		it "not to place on an occupy cell" do
			ship.place([0,0],"vertical",grid)
			ship2.place([2,0],"vertical",grid)
			expect(ship2.cells).to eq(nil)
		end


		it "if it's destroyed" do
			ship.place([0,0],"vertical",grid)
			expect(ship.destroyed?).not_to be_true
			ship.cells.each {|cell| cell.bomb}
			expect(ship.destroyed?).to be_true
		end

		it "how to occupy the it 's cells" do
			ship.place([0,0],"vertical",grid)
			ship.cells.each {|cell| expect(cell.empty?).not_to be_true}
		end

		it "if it's placed out of range" do
			ship.place([0,7], "horizontal",grid)
			expect(ship.cells).to eq(nil)
		end

		it "if it's placed" do 
			ship.place([0,0],"vertical",grid)
			expect(ship.placed?).to be_true
		end

	end

	context "should by default" do

	end
end