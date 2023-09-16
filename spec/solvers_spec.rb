# rubocop:disable all
# frozen_string_literal: true

require_relative "../solver"

describe Solver do
  describe ".factorial" do
    context "when given 0" do
      it "returns 1" do
        expect(Solver.factorial(0)).to eq(1)
      end
    end

    context "when given a positive integer" do
      it "returns the correct factorial" do
        expect(Solver.factorial(5)).to eq(120)
        expect(Solver.factorial(1)).to eq(1)
      end
    end

    context "when given a negative integer" do
      it "raises an ArgumentError" do
        expect { Solver.factorial(-2) }.to raise_error(ArgumentError)
      end
    end
  end
end
