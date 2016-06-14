require 'pry'
arr = [5,4,3, 2, 1, 9, 4, 38, 19, 3, 0, 8797]


def insertion(array)
  outer_counter = 1

  while outer_counter < array.length

    inner_counter = outer_counter - 1

    if array[outer_counter] < array[inner_counter]
      while inner_counter >= 0
        switch = inner_counter if array[outer_counter] < array[inner_counter]
        inner_counter -= 1
      end
      array.insert(switch, array[outer_counter])
      array.delete_at(outer_counter + 1)
    end
    outer_counter += 1
  end
  array
end



puts insertion(arr)
