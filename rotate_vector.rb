require 'pry'

# create vector with n elements and every item is shifted by
# for example


# n = 8
# i = 3
# abcdefgh -> defghabc



# start with abcd, we want it to be dabc
# n = 4
# i = 3
# abcd -> dabc


# option - great a loop
# shift each vector number 1 to the left each iteration of hte loop
# loop runs i number of times

# edge cases
# if n is equal to i, the the output will the same as the input.
# edge case if i > n, should we build out a seperate method?

def rotate_string_vector(vector, i)
  counter = 0
# if string
  while counter < i
    vector = vector + vector[0]
    vector[0] = ""
    counter += 1
  end

  puts vector

end


rotate_string_vector("abcd", 3)


# def rotate_array_vector(vector, i)
#   counter = 0
# # if array
#   while counter < i
#     binding.pry
#     num = vector.shift
#     vector.push(num)
#     counter += 1
#   end
#
#   print vector
#
# end
#
# rotate_array_vector(["a", "b", "c", "d", "e"], 3)
#


def rotate_array_vector(vector, i)
  counter = 0
# if array
  while counter < i
    num = vector[0]
    vector = vector[1..-1]
    vector << num

    counter += 1
  end

  print vector

end

rotate_array_vector(["1", "2", "3", "4", "5"], 3)
