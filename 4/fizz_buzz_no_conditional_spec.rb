require 'rspec'

class NumberPrinterBase
  def initialize(number)
    @number = number
  end
end

class IntegerPrinter < NumberPrinterBase
  def text
    @number.to_s
  end
end

class FizzPrinter < NumberPrinterBase
  def text
    "fizz"
  end
end

class BuzzPrinter < NumberPrinterBase
  def text
    "buzz"
  end
end

class FizzBuzzPrinter < NumberPrinterBase
  def text
    "fizzbuzz"
  end
end

class NumberPrinter
  PRINTER_CLASSES = [
    IntegerPrinter,
    IntegerPrinter,
    FizzPrinter,
    IntegerPrinter,
    BuzzPrinter,
    FizzPrinter,
    IntegerPrinter,
    IntegerPrinter,
    FizzPrinter,
    BuzzPrinter,
    IntegerPrinter,
    FizzPrinter,
    IntegerPrinter,
    IntegerPrinter,
    FizzBuzzPrinter,
  ]

  def self.for(number)
    PRINTER_CLASSES[(number % 15) - 1].new(number)
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
