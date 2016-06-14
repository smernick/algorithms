#
# Find the sum of contiguous subarray within a one-dimensional array of numbers which has the largest sum.
#
# [11:18]
# Example {-2, -3, 4, -1, -2, 1, 5, -3}
#
# [11:19]
# should return 7

#   remove numbers from beginning until it decreases the sum of hte resulting array
    # set start_index
#  once we hit that case, we swtich to slicing off the back of the array until the sum decreases
  # set end_index
#  remove from end and compare that too max

# chop elements from front of array until




require 'pry'

def sub_array(array)
  if sum_of_array(array) < sum_of_array(array[1..-1])
    sub_array(array[1..-1])
  elsif sum_of_array(array) < sum_of_array(array[0..-2])
    sub_array(array[0..-2])
  else
    sum_of_array(array)
  end
end


  def sum_of_array(array)
    array.inject(0) {|sum, num| sum + num}
  end


#
# puts "-1, 3, 2 equal " + sub_array([-1, 3, 2]).to_s #5
# puts "1, 2,3 equals" + sub_array([1,2,3]).to_s
# puts "a larger one goes to " + sub_array([-2, -3, 4, -1, -2, 1, 5, -3]).to_s #4
puts "-1, -2, -3 equals" + sub_array([-2,-3,-1]).to_s
