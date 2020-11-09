# frozen_string_literal: true

# Utility extenders for global classes

class TrueClass
  def to_bin
    1
  end
end

class FalseClass
  def to_bin
    0
  end
end
