# -*- coding: utf-8 -*-

require "./money.rb"

describe Dollar do
  context "積を計算する場合" do
    before :all do
      @five = Money.dollar(5)
    end

    it "$5 x 2 = $10" do
      @five.times(2).should == Dollar.new(10)
    end
    it "$5 x 3 = $15" do
      @five.times(3).should == Dollar.new(15)
    end
  end
end

describe Franc do
  context "積を計算する場合" do
    before :all do
      @five = Franc.new(5)
    end

    it "5 CHF x 2 = 10 CHF" do
      @five.times(2).should == Franc.new(10)
    end
    it "5 CHF x 3 = 15 CHF" do
      @five.times(3).should == Franc.new(15)
    end
  end
end

describe "等価性" do
  it("$5 == $5") { Dollar.new(5).should == Dollar.new(5) }
  it("$5 != $6") { Dollar.new(5).should_not == Dollar.new(6) }
  it("5 CHF == 5 CHF") { Franc.new(5).should == Franc.new(5) }
  it("5 CHF != 6 CHF") { Franc.new(5).should_not == Franc.new(6) }
  it("$5 != 5 CHF") { Dollar.new(5).should_not == Franc.new(5) }
end
