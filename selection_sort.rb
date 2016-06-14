require 'pry'

array = [1,4, 2, 8, 3,4, 7, 0]


def selection(array)
  outer_counter = 0

  while outer_counter < array.length
    inner_counter = outer_counter
    max = array[outer_counter]
    index = outer_counter

      while inner_counter < array.length
        if array[inner_counter] < max
          max = array[inner_counter]
          index = inner_counter
        end
        inner_counter += 1
      end

      temp = array[index]
      array[index] = array[outer_counter]
      array[outer_counter] = temp

    outer_counter += 1
  end

  array
end


print selection(array)
