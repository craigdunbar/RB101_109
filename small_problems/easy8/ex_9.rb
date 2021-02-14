=begin
-----------------------INSTRUCTIONS--------------------------------------

Reverse the Digits In a Number

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:
--------------------------PROBLEM----------------------------------------
Input: positive integer
Output: original integer reversed
---------------------------RULES-----------------------------------------
Explicit: integers are positive

Implicit: 

--------------------------EXAMPLES---------------------------------------
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

----------------------------ALGO----------------------------------------
define method with integer arg
initalise an empty array
change integer into string
split string into chars
use pop to remove last character
and push into new array
repeat until string array is empty
return new array joined
=end

# def reversed_number(int)
#   new_arr = []
#   int_arr = int.to_s.chars
#   counter = 1
#   loop do
#     break if int_arr.empty?
#     new_arr << int_arr.pop.to_i
#     counter += 1
#   end
# new_arr.join.to_i
# end

#using reverse method

def reversed_number(int)
  string = int.to_s
  rev_str = string.reverse
  rev_str.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021