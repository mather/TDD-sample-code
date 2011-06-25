# -*- coding: utf-8 -*-

require "./money.rb"

describe "積の計算" do
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

describe "等価性" do
  context "同じ通貨" do
    it("$5 == $5") { Money.dollar(5).should == Money.dollar(5) }
    it("$5 != $6") { Money.dollar(5).should_not == Money.dollar(6) }
  end

  context "異なる通貨" do
    it("$5 != 5 CHF") { Money.dollar(5).should_not == Money.franc(5) }
  end
end

describe "通貨" do
  it("Dollar's currency is 'USD'") { Money.dollar(1).currency.should == "USD" }
  it("Franc's currency is 'CHF'") { Money.franc(1).currency.should == "CHF" }
  it("Franc(after times) is 'CHF'") {
    Money.franc(1).times(2).currency.should == "CHF"
  }
end
