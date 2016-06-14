require 'pry'

def search(array, target_value)
  min = 0
  max = array.length - 1

  while max >= min
    guess = ((min+max)/2).floor
    if array[guess] == target_value
      puts guess
      return
    elsif array[guess] < target_value
      min = guess + 1
    else
      max = guess - 1
    end
  end

  puts 'Does not exist'
  return

end



primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

search(primes, 62)
