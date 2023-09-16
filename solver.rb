# frozen_string_literal: true

# Solver class provides methods for solving mathematical problems
class Solver
  # Calculates the factorial of a non-negative integer
  def self.factorial(number)
      raise ArgumentError, "Input must be a non-negative integer" if number.negative?
    return 1 if number.zero?

      (1..number).reduce(:*)
  end

  # Reverses a string
  def self.reverse(word)
      word.reverse
    end

  # Implements the FizzBuzz problem
    def self.fizzbuzz(number)
      if (number % 3).zero? && (number % 5).zero?
        "FizzBuzz"
      elsif (number % 3).zero?
        "Fizz"
      elsif (number % 5).zero?
        "Buzz"
      else
        number.to_s
      end
    end
end
