=begin
-----------------------INSTRUCTIONS--------------------------------------

Reversed Arrays (Part 2)

Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.
--------------------------PROBLEM----------------------------------------

Input: 
Output: 
---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 

--------------------------EXAMPLES---------------------------------------

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
----------------------------ALGO----------------------------------------
define the method with array as arg
initialise an empty array
take the last entry in the original array and add it to the start of the new array

=end

# def reverse(array)
#   arr = []
#   count = -1
#   loop do 
#     break if count == -array.size - 1 || array.empty?
#     arr << array[count]
#     count -= 1
#   end
# arr
# end

def reverse(array)
  array.each_with_object([]) {|el, a| a.unshift(el)}
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true