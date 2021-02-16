
=begin
-----------------------INSTRUCTIONS--------------------------------------

Sequence Count

Create a method that takes two integers as arguments. 
The first argument is a count, and the second is the first number of a sequence that your method will create. 
The method should return an Array that contains the same number of elements as the count argument, 
while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, 
while the starting number can be any integer value. If the count is 0, an empty list should be returned.
--------------------------PROBLEM----------------------------------------

Input: two integers
Output: array
---------------------------RULES-----------------------------------------
Explicit: first integer is the numbers of elements the array should return
          second interger is the first number, next number will be this second integer doubled etc.
          if count is 0 array will be empty

Implicit: 

--------------------------EXAMPLES---------------------------------------
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

----------------------------ALGO----------------------------------------
define method with two integers as arg
use times with first integer to return 5 array elements
use second integer as the bkock multiplier
=end

def sequence(first, second)
  arr = []
  first.times do |n|
  arr << (n+1) * second
  end
  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []