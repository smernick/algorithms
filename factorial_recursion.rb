require 'pry'


def factorial(num)
  return num if num == 1 
  num * factorial(num - 1)
end


puts factorial(5)
