# frozen_string_literal: true

# Sample of Half Adder (Bitwise) in Ruby
#
# Input:
# A (0 or 1)
# B (0 or 1)
#
# Output:
# Addition result

module Logic
  class HalfAdderBitwise
    def self.call
      puts "\nWelcome to the Half Adder (Bitwise)!"
      puts 'Please provide input A (0, 1):'
      a = gets.chomp.to_i
      puts 'Please provide input B (0, 1):'
      b = gets.chomp.to_i
      left, right = calculate(a, b)
      puts("Result: #{left}#{right}")
    end

    def self.calculate(a, b)
      [a & b, a ^ b]
    end
  end
end
