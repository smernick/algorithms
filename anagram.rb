require "pry"

# create a new array
# look athe first word, see if it has any matches,
# add those both into a new array and remove htem from the outer array
# return an array


def anagram(array)

hash = array.each_with_object({}) do |word, sorted_hash|
    sorted_word = word.split("").sort.join
    if sorted_hash[sorted_word]
       sorted_hash[sorted_word] << word
     else
      sorted_hash[sorted_word] = [word]
    end
    sorted_hash[sorted_word].sort!
  end

  # hash.each do |word|
  #   counter = 0
  #   if word[1].length > 1
  #     new_arr = []
  #     while counter < word[1].length
  #       new_arr << array[word[1][counter]]
  #       counter +=1
  #     end
  #   end
  #   return_array << new_arr
  # end

print hash.values.sort!
end


anagram(["cool", "tob", "act", "bot", "loco", "fly", "coll", "act", "cat"])


# while counter_one < array.length
#   counter_two = 0
#   count = 0
#
#     while counter_two < array.length
#       if counter_one == counter_two
#         counter_two += 1
#       else sorted_array[counter_one] == sorted_array[counter_two]
#         count += 1
#         return_array << array[counter_two]
#         counter_two += 1
#       end
#     end
#     return_array << array[counter_two] if count > 1
#   counter_one += 1
# end
