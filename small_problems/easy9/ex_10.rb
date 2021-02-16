
=begin
-----------------------INSTRUCTIONS--------------------------------------

Grocery List

Write a method which takes a grocery list (array) of fruits with quantities 
and converts it into an array of the correct number of each fruit.
--------------------------PROBLEM----------------------------------------

Input: nested array
Output: array
---------------------------RULES-----------------------------------------
Explicit: take the nested array and return an array of elements occuring the number of times given in the nested array[1]

Implicit: 

--------------------------EXAMPLES---------------------------------------
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

----------------------------ALGO----------------------------------------
define method with nested array as arg
iterate over the nested array using map to access the subarray
use the second element in the array to add the first element a given number of times
reutrn the new array
=end

def buy_fruit(array)
  new_arr = []
  array.each do |sub_arr|
    sub_arr[1].times {new_arr << sub_arr[0]}
    end
  p new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]