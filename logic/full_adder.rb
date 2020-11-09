# frozen_string_literal: true

# Sample of Full Adder in Ruby
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
  class FullAdder
    include Logic::Basics

    def self.call
      puts "\nWelcome to the Full Adder!"
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
      first_step = HalfAdder.calculate(a, b)
      second_step = HalfAdder.calculate(first_step.last, c)
      left = OR.call(first_step.first, second_step.first)
      right = second_step.last
      [left, right]
    end
  end
end
