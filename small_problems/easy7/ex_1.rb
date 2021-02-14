=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that combines two Arrays passed in as arguments, 
and returns a new Array that contains all elements from both Array arguments,
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
--------------------------PROBLEM----------------------------------------

Input:  two arrays
Output: one array containing the given arrays
---------------------------RULES-----------------------------------------
Explicit: elements must be alternated between first and second arrays,
          arrays are not empty, they have the same number of elements, integers are positive
Implicit: 

--------------------------EXAMPLES---------------------------------------

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

----------------------------ALGO----------------------------------------
define method with two array args
initalise a counter 
initialise an empty array
initalise an iteration 
  iterate through the two arrays element by element
  push first element of first array into new array
  followed by first element of second array
  then second element of first array and second element of second array
  and so on
  break when counter == array.size

=end

# def interleave(arr1, arr2)
#   mixed_arr = []
#   counter = 0
#   loop do
#     break if counter == arr1.size
#   # mixed_arr <<  [arr1[counter], arr2[counter]]
#   mixed_arr <<  arr1[counter] << arr2[counter]
#   counter += 1
#   end
#   # p mixed_arr.flatten
#   p mixed_arr
# end

def interleave(arr1,arr2)
p new_arr =  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']