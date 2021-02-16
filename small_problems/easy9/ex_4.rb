=begin
-----------------------INSTRUCTIONS--------------------------------------

Counting Up

Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.
--------------------------PROBLEM----------------------------------------

Input: integer
Output: array
---------------------------RULES-----------------------------------------
Explicit: take the integer arg and return an array woth range 1 upto arg
          int will be greater than zero

Implicit: 

--------------------------EXAMPLES---------------------------------------
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

----------------------------ALGO----------------------------------------
define method with integer arg
initialise a counter = 0
initalise empty arr
loop 
add counter to empty array
break when counter == num
=end

# def sequence(num)
#   arr = []
#   1.upto(num){ |i| arr << i}
#   p arr
# end

# LS solution
# def sequence(num)
#   (1..num).to_a
# end

# Further exploration

def sequence(num)
(num..1).to_a
end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
p sequence(-1) == [-1, 0, 1]