require 'rspec'

class NumberParserBase
  def initialize(numbers_text)
    @text = numbers_text
  end
end

class EmptyStringParser < NumberParserBase
  def numbers
    [0]
  end
end

class SingleNumberParser < NumberParserBase
  def numbers
    [@text.to_i]
  end
end

class MultipleNumberParser < NumberParserBase
  def numbers
    @text.split(",").map &:to_i
  end
end

module NumberParserFactory
  def self.[](numbers_text)
    return EmptyStringParser.new numbers_text if numbers_text.empty?
    return SingleNumberParser.new numbers_text unless numbers_text.include? ","
    MultipleNumberParser.new numbers_text
  end
end

module StringCalculator
  def self.add(numbers_text)
    NumberParserFactory[numbers_text].numbers.reduce :+
  end
end

describe StringCalculator do
  describe ".add" do
    it "should return 0 for an empty string" do
      expect(subject.add "").to eq 0
    end

    it "should return 1 for '1'" do
      expect(subject.add "1").to eq 1
    end

    it "should return the sum of two numbers" do
      expect(subject.add "1,2").to eq 3
    end
  end
end
