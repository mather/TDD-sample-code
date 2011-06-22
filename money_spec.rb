# -*- coding: utf-8 -*-

require "./money.rb"

describe Dollar do
  context "積を計算する場合" do
    before :all do
      @five = Money.dollar(5)
    end

    it "$5 x 2 = $10" do
      @five.times(2).should == Money.dollar(10)
    end
    it "$5 x 3 = $15" do
      @five.times(3).should == Money.dollar(15)
    end
  end
end

describe Franc do
  context "積を計算する場合" do
    before :all do
      @five = Money.franc(5)
    end

    it "5 CHF x 2 = 10 CHF" do
      @five.times(2).should == Money.franc(10)
    end
    it "5 CHF x 3 = 15 CHF" do
      @five.times(3).should == Money.franc(15)
    end
  end
end

describe "等価性" do
  it("$5 == $5") { Money.dollar(5).should == Money.dollar(5) }
  it("$5 != $6") { Money.dollar(5).should_not == Money.dollar(6) }
  it("5 CHF == 5 CHF") { Money.franc(5).should == Money.franc(5) }
  it("5 CHF != 6 CHF") { Money.franc(5).should_not == Money.franc(6) }
  it("$5 != 5 CHF") { Money.dollar(5).should_not == Money.franc(5) }
end
