# frozen_string_literal: true

# Sample of Half Adder in Ruby
#
# Input:
# A (0 or 1)
# B (0 or 1)
#
# Output:
# Addition result

require_relative 'extenders'
require_relative 'basics'
require_relative 'half_adder'
require_relative 'half_adder_bitwise'
require_relative 'full_adder'
require_relative 'full_adder_bitwise'
require_relative 'full_adder_refactored'
require_relative 'binary_addition'
require_relative 'bitwise_addition'
require_relative 'bitwise_addition_refactored'

BINARY_LOGIC_OPERATIONS = [
  Logic::HalfAdder,
  Logic::HalfAdderBitwise,
  Logic::FullAdder,
  Logic::FullAdderRefactored,
  Logic::FullAdderBitwise,
  Logic::BinaryAddition,
  Logic::BitwiseAddition,
  Logic::BitwiseAdditionRefactored
].freeze

puts 'Welcome to binary logic!'
loop do
  puts 'Choose the operation:'
  puts '0 - Half Adder'
  puts '1 - Half Adder Bitwise'
  puts '2 - Full Adder'
  puts '3 - Full Adder Refactored'
  puts '4 - Full Adder Bitwise'
  puts '5 - Binary Addition'
  puts '6 - Bitwise Addition'
  puts "7 - Bitwise Addition Refactored\n"
  selection = gets.chomp.to_i

  BINARY_LOGIC_OPERATIONS[selection].call

  puts "\nWant to do something else? (y/n)"
  continue = gets.chomp
  if continue == 'n'
    puts "\nThank you!"
    break
  end
end
