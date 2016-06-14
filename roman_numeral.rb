require 'pry'


#
#
# def numeral(num)
#   numeral_hash = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}
#
#   sum = 0
#   counter = 0
#
#   while counter < num.length
#     sum += numeral_hash[num[counter].to_sym]
#     counter +=1
#   end
#
#   sum
# end
#
#
# puts numeral("MDCCC")



class Numeral
  attr_accessor :numerals, :sum

  def initialize(num)
    @numerals = num
    @sum = 0
  end


  def value(numeral)
    numeral_hash = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}
    numeral_hash[numeral.to_sym]
  end

  def calculate
    counter = 0

    while counter < @numerals.length
      value_one = self.value(@numerals[counter])
      value_two = self.value(@numerals[counter + 1]) if @numerals[counter + 1]

      if value_one < value_two
        @sum += (value_two - value_one)
        counter +=2
      else
        @sum += value_one
        counter += 1
      end

    end
    puts @sum
  end
end




num = Numeral.new("XV")
num.calculate
