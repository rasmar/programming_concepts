# frozen_string_literal: true

# Sample of Bitwise Addition in Ruby
#
# Input:
# A (number)
# B (number)
#
# Output:
# Addition result

module Logic
  class BitwiseAddition
    def self.call
      puts "\nWelcome to the Bitwise Addition!"
      puts 'Please provide input A (number):'
      a = gets.chomp.to_i
      puts 'Please provide input B (number):'
      b = gets.chomp.to_i

      puts("Result: #{calculate(a, b)}")
    end

    def self.calculate(a, b)
      loop do
        carry_bit = a & b
        a = a ^ b
        b = carry_bit << 1
        break if carry_bit.zero?
      end
      a
    end
  end
end
