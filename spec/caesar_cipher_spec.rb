require 'spec_helper'
require_relative '../caesarcipher.rb'

describe "Caesar Cipher" do
	it "should allow positive shift" do
		caesar_cipher("Abc", 1).should == "Bcd"
		caesar_cipher("A", 25).should == "Z"
	end

	it "should allow negative shift" do
		caesar_cipher("Bcd", -1).should == "Abc"
	end

	it "should loop around on positive shift and maintain case" do
		caesar_cipher("Z", 1).should == "A"
		caesar_cipher("z", 1).should == "a"
	end

	it "should loop around on negative shift and maintain case" do
		caesar_cipher("A", -1).should == "Z"
		caesar_cipher("a", -1).should == "z"
	end

	it "should encode letters but not symbols / punctuation" do
		caesar_cipher("What a string!", 5).should == "Bmfy f xywnsl!"
	end

	it "should work even if shift is larger than 26" do
		caesar_cipher("What a string!", 5+26*1000).should == "Bmfy f xywnsl!"
	end
end
