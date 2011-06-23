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
    Franc.new(amount, nil)
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
    @currency = "CHF"
  end

  def times(multiplier)
    return Franc.new(@amount * multiplier, nil)
  end

end
