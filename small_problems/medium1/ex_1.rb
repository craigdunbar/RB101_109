=begin
-----------------------INSTRUCTIONS--------------------------------------

Rotation (Part 1)

Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
--------------------------PROBLEM----------------------------------------

Input: array
Output: array
---------------------------RULES-----------------------------------------
Explicit: move first element to end of array. do not mutate the original array

Implicit: 

--------------------------EXAMPLES---------------------------------------
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

----------------------------ALGO----------------------------------------
define method with array as arg
use shift to remove and return the first element 
use push to add it to the end of the array
=end

# def rotate_array(arr)
#   new_arr = []
#   arr.each do |el| 
#     new_arr << el
#   end
#   new_arr << new_arr.shift
#   new_arr
# end

# # LS Solution

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4] 

# Further exploration rorate a string and an integer

# def rotate_string(string)
# string[1..-1] + string[0]
# end

# p rotate_string('hello') == 'elloh'

def rotate_integer(num)
  str = num.to_s.chars
  p (str[1..-1] + [str[0]]).join.to_i
end

p rotate_integer(12345) == 23451