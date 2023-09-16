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

  describe ".fizzbuzz" do
    context "when given a number divisible by 3" do
      it 'returns "Fizz"' do
        expect(Solver.fizzbuzz(3)).to eq("Fizz")
        expect(Solver.fizzbuzz(9)).to eq("Fizz")
      end
    end

    context "when given a number divisible by 5" do
      it 'returns "Buzz"' do
        expect(Solver.fizzbuzz(5)).to eq("Buzz")
        expect(Solver.fizzbuzz(10)).to eq("Buzz")
      end
    end

    context "when given a number divisible by both 3 and 5" do
      it 'returns "FizzBuzz"' do
        expect(Solver.fizzbuzz(15)).to eq("FizzBuzz")
        expect(Solver.fizzbuzz(30)).to eq("FizzBuzz")
      end
    end

    context "when given a number not divisible by 3 or 5" do
      it "returns the number as a string" do
        expect(Solver.fizzbuzz(1)).to eq("1")
        expect(Solver.fizzbuzz(7)).to eq("7")
      end
    end
  end
end
