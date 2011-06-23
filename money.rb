# -*- coding: utf-8 -*-

class Money
  attr_reader :amount, :currency

  def ==(other)
    self.class == other.class and @amount == other.amount
  end

  def Money.dollar(amount)
    Dollar.new(amount)
  end

  def Money.franc(amount)
    Franc.new(amount, "CHF")
  end
end

class Dollar < Money

  def initialize(amount)
    @amount = amount
    @currency = "USD"
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

end

class Franc < Money

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def times(multiplier)
    return Money.franc(@amount * multiplier)
  end

end
