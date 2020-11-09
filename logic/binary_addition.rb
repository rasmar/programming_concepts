# frozen_string_literal: true

# Sample of Binary Addition in Ruby
#
# Input:
# A (binary string)
# B (binary string)
#
# Output:
# Addition result

require_relative 'full_adder'

module Logic
  class BinaryAddition
    include Logic::Basics

    def self.call
      puts "\nWelcome to the Binary Addition!"
      puts 'Please provide input A (binary string):'
      a = gets.chomp
      puts 'Please provide input B (binary string):'
      b = gets.chomp

      puts("Result: #{calculate(a, b)}")
    end

    def self.calculate(a, b)
      sum = ''
      c = 0
      (b = b.rjust(a.length, '0')) if a.length > b.length
      (a = a.rjust(b.length, '0')) if a.length < b.length

      for i in 0..a.length
        x = a[i].to_i == 1
        y = b[i].to_i == 1
        fa_result = FullAdder.calculate(x, y, c == 1)
        c = fa_result[0].to_bin
        sum = fa_result[1].to_bin.to_s + sum
      end

      c == 1 ? c.to_s + sum : sum
    end
  end
end
