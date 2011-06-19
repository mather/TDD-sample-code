# -*- coding: utf-8 -*-

require "./money.rb"

describe Dollar do
  context "積を計算する場合" do
    before :all do
      @five = Dollar.new(5)
    end

    it "$5 x 2 = $10" do
      @five.times(2).should == Dollar.new(10)
    end
    it "$5 x 5 = $15" do
      @five.times(3).should == Dollar.new(15)
    end
  end

  context "等価性" do
    it("$5 == $5") { Dollar.new(5).should == Dollar.new(5) }
    it("$5 != $6") { Dollar.new(5).should_not == Dollar.new(6) }
  end
end
