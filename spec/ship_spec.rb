require_relative "../lib/ship"

describe Ship do 
	#let(:ship) {Ship.new}
	context "should contain" do
		
		it "a name and type" do
			ship = Ship.new('Evgeney','Battleship')
			expect(ship.name).to eq('Evgeney')
			expect(ship.type).to eq('Battleship')
		end

		it "a length" do
			ship = Ship.new('Evgeney','Battleship')
			expect(ship.length).to eq(4)
		end
	end

	context "should know" do

	end

	context "should by default" do
	end
end