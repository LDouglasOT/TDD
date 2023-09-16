# frozen_string_literal: true

# Solver class provides methods for solving mathematical problems
class Solver
  # Calculates the factorial of a non-negative integer
  def self.factorial(number)
    raise ArgumentError, "Input must be a non-negative integer" if number.negative?
    return 1 if number.zero?

    (1..number).reduce(:*)
  end
end
