require 'pry'




def numeral(num)
  numeral_hash = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}

  sum = 0
  counter = 0

  while counter < num.length
    sum += numeral_hash[num[counter].to_sym]
    counter +=1
  end

  sum
end


puts numeral("MDCCC")



class Numeral



end
