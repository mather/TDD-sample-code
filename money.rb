# -*- coding: utf-8 -*-

class Money
  attr_reader :amount

  def ==(other)
    self.class == other.class and @amount == other.amount
  end

  def Money.dollar(amount)
    Dollar.new(amount)
  end
end

class Dollar < Money

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

end

class Franc < Money

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    return Franc.new(@amount * multiplier)
  end

end
