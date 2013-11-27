require_relative '../lib/cell'
 
describe  Cell do
	let(:cell){Cell.new}

	context "should contain" do

	end

	context "should know" do
		it "if someone tried to shoot it" do
			cell.bomb
			expect(cell.bombed?).to be_true
		end

		it "if it's hit" do
			cell.empty = false
			cell.bomb
			expect(cell.hit?).to be_true
		end

		it "if it's not hit" do
			cell.empty = true
			cell.bomb
			expect(cell.hit?).not_to be_true
		end
	end

	context "should by default" do

			it "be empty" do
				expect(cell.empty?).to be_true
			end

			it "not bombed" do
				expect(cell.bombed?).not_to be_true
			end
	end


end