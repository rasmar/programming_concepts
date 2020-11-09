# frozen_string_literal: true

# Sample of Bitwise Addition (Refactored) in Ruby
#
# Input:
# A (number)
# B (number)
#
# Output:
# Addition result

module Logic
  class BitwiseAdditionRefactored
    def self.call
      puts "\nWelcome to the Bitwise Addition (Refactored)!"
      puts 'Please provide input A (number):'
      a = gets.chomp.to_i
      puts 'Please provide input B (number):'
      b = gets.chomp.to_i

      puts("Result: #{calculate(a, b)}")
    end

    def self.calculate(a, b)
      b == 0 ? x : calculate((a ^ b), (a & b) << 1)
    end
  end
end
