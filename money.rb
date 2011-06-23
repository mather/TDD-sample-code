# -*- coding: utf-8 -*-

class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    self.class == other.class and @amount == other.amount
  end

  def Money.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def Money.franc(amount)
    Franc.new(amount, "CHF")
  end
end

class Dollar < Money

  def times(multiplier)
    return Money.dollar(@amount * multiplier)
  end

end

class Franc < Money

  def times(multiplier)
    return Money.franc(@amount * multiplier)
  end

end
