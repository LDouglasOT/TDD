# rubocop:disable all
# frozen_string_literal: true

require_relative "../Solvers"

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

  describe ".reverse" do
    it "reverses a string" do
      expect(Solver.reverse("hello")).to eq("olleh")
      expect(Solver.reverse("")).to eq("")
      expect(Solver.reverse("12345")).to eq("54321")
    end
  end
end
