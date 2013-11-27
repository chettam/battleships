require_relative '../lib/cell'
 
describe  Cell do
	let(:cell){Cell.new}
	
	context "should contain" do

	end

	context "should know" do

	end

	context "should by default" do

			it "be empty" do
				expect(cell.empty?).to be_true
			end
	end


end