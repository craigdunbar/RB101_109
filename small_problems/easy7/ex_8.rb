=begin
-----------------------INSTRUCTIONS--------------------------------------

Multiply Lists

Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.
--------------------------PROBLEM----------------------------------------

Input: two arrays
Output: new array
---------------------------RULES-----------------------------------------
Explicit: new array contains product of elements of given arrays
            arrays contain the same number of elements

Implicit: 

--------------------------EXAMPLES---------------------------------------
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

----------------------------ALGO----------------------------------------
define methos with 2 array args
iterate through the arrays 
create a new array with the element as the product of the given arrays
=end

# def multiply_list(arr1, arr2)
#   counter = 0
#   new_arr = []
#   loop do
#     break if counter == arr1.size
#     new_arr << arr1[counter]*arr2[counter]
#     counter += 1
#     end
#   p new_arr
# end

# refctored
# def multiply_list(arr1, arr2)
#   new_arr = []
#     arr1.each_with_index do |el, i|
#       new_arr << el*arr2[i]
#     end
#   p new_arr
# end

# using zip -----> need to review

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |ary| ary.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]