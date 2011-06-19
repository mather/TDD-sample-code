# -*- coding: utf-8 -*-

require "./money.rb"

describe Dollar do
  context "積を計算する場合" do
    before :all do
      @five = Dollar.new(5)
    end

    it "$5 x 2 = $10" do
      product = @five.times(2)
      product.amount.should be(10)
    end
    it "$5 x 5 = $15" do
      product = @five.times(3)
      product.amount.should be(15)
    end
  end

  context "等価性" do
    it { Dollar.new(5).should == Dollar.new(5) }
    it { Dollar.new(5).should_not == Dollar.new(6) }
  end
end
