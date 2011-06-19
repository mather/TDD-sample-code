# -*- coding: utf-8 -*-

class Dollar

  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    return Dollar.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.amount
  end

end
