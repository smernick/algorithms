# def sequence(array)
# counter = 2
#
#   while counter < 100
#     new_number = (array[counter - 1] + array[counter - 2])
#     array.push(new_number)
#     counter += 1
#
#   end
#
#   array
# end


# print sequence([0,1])

# def fibonacci( n )
#     return  n  if n <= 1
#     fibonacci( n - 1 ) + fibonacci( n - 2 )
# end
# puts fibonacci( 3 )


def seq(n)
  return n if n <= 1
  seq(n-1) + seq(n-2)
end

puts seq(10)


# we are going to input a number of times we want to sequence to run, this will be n
# we will tell the sequence how many times to run
