require 'pry'

def random_card
 number = rand(1..11)
 return number
end

def deal_card
  hand = random_card + random_card
  return hand
end

def hit(total)
  while total <= 21
    puts "your total is #{total}"
    puts "Type h to hit or s to stay"
    input = gets.chomp
    if input == "h"
      total += random_card
    else input == "s"
      return total
    end
  end
  return total
end



def runner
  total = deal_card
  total = hit(total)
  if total > 21
    puts "You lost! Your total is #{total}"
  else
    puts "You Won!!! Your total is #{total}"
  end
end


runner
