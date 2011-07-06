# -*- coding: utf-8 -*-

class Money

  attr_reader :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    @currency == other.currency and @amount == other.amount
  end

  def Money.dollar(amount)
    Money.new(amount, "USD")
  end

  def Money.franc(amount)
    Money.new(amount, "CHF")
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  protected

  attr_reader :amount

  def inspect
    "#{@amount} #{@currency}"
  end

end
