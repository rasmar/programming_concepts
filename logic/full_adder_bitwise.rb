# frozen_string_literal: true

# Sample of Full Adder (Bitwise) in Ruby
#
# Input:
# A (0 or 1)
# B (0 or 1)
# C (0 or 1)
#
# Output:
# Addition result

require_relative 'half_adder_bitwise'

module Logic
  class FullAdderBitwise
    include Logic::Basics

    def self.call
      puts "\nWelcome to the Full Adder (Bitwise)!"
      puts 'Please provide input A (0, 1):'
      a = gets.chomp.to_i
      puts 'Please provide input B (0, 1):'
      b = gets.chomp.to_i
      puts 'Please provide input C (0, 1):'
      c = gets.chomp.to_i

      left, right = calculate(a, b, c)
      puts("Result: #{left}#{right}")
    end

    def self.calculate(a, b, c)
      c.zero? ? HalfAdderBitwise.calculate(a, b) : [ a | b, a == b ? 1 : 0]
    end
  end
end
