# frozen_string_literal: true

# Module for Logic Basics

module Logic
  module Basics
    AND = ->(x, y) { x && y }
    OR = ->(x, y) { x || y }
    NOT = ->(x) { !x }
    XOR = ->(x, y) { x != y }
    EQUIV = ->(x, y) { x == y }
    IMP = ->(x, y) { x ? y : true }
    IDENT = ->(x) { NOT.call(NOT.cal(x)) }
    NAND = ->(x, y) { NOT.call(AND.call(x, y)) }
    NOR = ->(x, y) { NOT.call(OR.call(x, y)) }
  end
end
