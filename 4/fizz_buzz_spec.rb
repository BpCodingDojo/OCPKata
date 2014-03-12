require 'rspec'

class IntegerPrinter
  def initialize(number)
    @number = number
  end

  def text
    @number.to_s
  end
end

class FizzPrinter
  def text
    "fizz"
  end
end

class BuzzPrinter
  def text
    "buzz"
  end
end

class FizzBuzzPrinter
  def text
    "fizzbuzz"
  end
end

class NumberPrinter
  def self.for(number)
    return FizzBuzzPrinter.new if number % (3*5) == 0
    return FizzPrinter.new if number % 3 == 0
    return BuzzPrinter.new if number % 5 == 0
    IntegerPrinter.new(number)
  end
end

class FizzBuzz
  def say(number)
    NumberPrinter.for(number).text
  end
end

describe FizzBuzz do
  describe "#say" do
    {
      1 => "1",
      2 => "2",
      3 => "fizz",
      4 => "4",
      5 => "buzz",
      6 => "fizz",
      7 => "7",
      8 => "8",
      9 => "fizz",
      10 => "buzz",
      11 => "11",
      12 => "fizz",
      13 => "13",
      14 => "14",
      15 => "fizzbuzz",
      30 => "fizzbuzz",
    }
    .each do |number, expected_output|
      it "should return #{expected_output} for #{number}" do
        expect(subject.say number).to eq expected_output
      end
    end
  end
end
