require_relative "../lib/grid"

describe Grid do

let(:grid) {Grid.new}

	context "should contain" do
		it "cells" do
			expect(grid.cells[0][0]).to be_a_kind_of(Cell)
		end
	end

	context "should know" do
	end

	context "should by default" do
	end

end