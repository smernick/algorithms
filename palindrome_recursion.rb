require 'pry'

def palindrome(string)
  return true if string.length == 0
  x = 0
  y = string.length - 1

  return false if string[x] != string[y]

  return true if palindrome(string[1..(y -1)])

end


puts palindrome(121)
