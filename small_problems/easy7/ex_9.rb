=begin
-----------------------INSTRUCTIONS--------------------------------------

Multiply All Pairs

Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.
--------------------------PROBLEM----------------------------------------

Input: two arrays
Output: array of product of every pair from both arrays
---------------------------RULES-----------------------------------------
Explicit: positive integers, no empty array, sort the result

Implicit: 

--------------------------EXAMPLES---------------------------------------
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

----------------------------ALGO----------------------------------------
define method with 2 array args
use inject to iterate through the arrays and get the product of reach pair
sort the final array
=end

def multiply_all_pairs(arr1, arr2)
# counter = 0
# new_arr = []
# loop do
#   break if counter == arr2.size
#   new_arr << arr1[0]*arr2[counter]#..
#   counter +=1 
# end
# count = 0
# loop do 
#   break if count == arr2.size
#   new_arr << arr1[1]*arr2[count]
#   count += 1
# end
# p new_arr.sort
new_arr = []
  arr1.each do |el|
    arr2.each do |el2|
      new_arr << el*el2
    end
  end
  p new_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]