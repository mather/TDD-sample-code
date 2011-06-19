# -*- coding: utf-8 -*-

require "./money.rb"

describe Dollar do
  context "積を計算する場合" do

    it "$5 x 2 = $10" do
      five = Dollar.new(5)
      five.times(2)
      five.amount.should be(10)
    end

  end
end
