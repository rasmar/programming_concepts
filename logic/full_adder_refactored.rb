# frozen_string_literal: true

# Sample of Full Adder (Refactored) in Ruby
#
# Input:
# A (0 or 1)
# B (0 or 1)
# C (0 or 1)
#
# Output:
# Addition result

require_relative 'half_adder'

module Logic
  class FullAdderRefactored
    include Logic::Basics

    def self.call
      puts "\nWelcome to the Full Adder (Refactored)!"
      puts 'Please provide input A (0, 1):'
      a = gets.chomp == '1'
      puts 'Please provide input B (0, 1):'
      b = gets.chomp == '1'
      puts 'Please provide input C (0, 1):'
      c = gets.chomp == '1'

      left, right = calculate(a, b, c)
      puts("Result: #{left.to_bin}#{right.to_bin}")
    end

    def self.calculate(a, b, c)
      c ? [OR.call(a, b), EQUIV.call(a, b)] : HalfAdder.calculate(a, b)
    end
  end
end
