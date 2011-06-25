# -*- coding: utf-8 -*-

class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    self.currency == other.currency and @amount == other.amount
  end

  def Money.dollar(amount)
    Money.new(amount, "USD")
  end

  def Money.franc(amount)
    Money.new(amount, "CHF")
  end

  def times(multiplier)
    return Money.new(@amount * multiplier, @currency)
  end

  def inspect
    "#{@amount} #{@currency}(#{self.class})"
  end

end

class Franc < Money
end
