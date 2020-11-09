# frozen_string_literal: true

# Sample of Half Adder in Ruby
#
# Input:
# A (0 or 1)
# B (0 or 1)
#
# Output:
# Addition result

require_relative 'basics'
require_relative 'extenders'

module Logic
  class HalfAdder
    include Logic::Basics

    def self.call
      puts "\nWelcome to the Half Adder!"
      puts 'Please provide input A (0, 1):'
      a = gets.chomp == '1'
      puts 'Please provide input B (0, 1):'
      b = gets.chomp == '1'
      left, right = calculate(a, b)
      puts("Result: #{left.to_bin}#{right.to_bin}")
    end

    def self.calculate(a, b)
      [AND.call(a, b), XOR.call(a, b)]
    end
  end
end
