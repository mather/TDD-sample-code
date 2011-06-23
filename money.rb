# -*- coding: utf-8 -*-

class Money
  attr_reader :amount

  def ==(other)
    self.class == other.class and @amount == other.amount
  end

  def Money.dollar(amount)
    Dollar.new(amount)
  end

  def Money.franc(amount)
    Franc.new(amount)
  end
end

class Dollar < Money
  attr_reader :currency

  def initialize(amount)
    @amount = amount
    @currency = "USD"
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

end

class Franc < Money
  attr_reader :currency

  def initialize(amount)
    @amount = amount
    @currency = "CHF"
  end

  def times(multiplier)
    return Franc.new(@amount * multiplier)
  end

end
