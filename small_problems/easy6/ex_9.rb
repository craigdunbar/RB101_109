=begin
-----------------------INSTRUCTIONS--------------------------------------

Does My List Include This?

Write a method named include? that takes an Array and a search value as arguments. 
This method should return true if the search value is in the array, false if it is not. 
You may not use the Array#include? method in your solution.

--------------------------PROBLEM----------------------------------------

Input: an array and and an additional value as an argument
Output: true or false
---------------------------RULES-----------------------------------------
Explicit: return true if array contains the given value, flase if it doesn't

Implicit: 

--------------------------EXAMPLES---------------------------------------
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

----------------------------ALGO----------------------------------------
define method with an array and value args
use any? to check array for the given value
if value is included in the array any? will return true

=end

def include?(array, value)
array.any?(value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false