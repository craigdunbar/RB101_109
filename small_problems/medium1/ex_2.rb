=begin
-----------------------INSTRUCTIONS--------------------------------------

Rotation (Part 2)

Write a method that can rotate the last n digits of a number. For example:
--------------------------PROBLEM----------------------------------------

Input: two intergers
Output: integer
---------------------------RULES-----------------------------------------
Explicit: the second integer arg is the number of digits at the end of the first given integer that are to be rotated
ie 123456, 5 == 134562

Implicit: 

--------------------------EXAMPLES---------------------------------------
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

----------------------------ALGO----------------------------------------
define method with 2 integer args
convert the integer to an array of string chars
use the second integer to select the correct chr counting back from the end last digit
add this selected char to the end of the array
join the array and convert to integer
=end
def rotate_rightmost_digits(num1, num2)
   str = num1.to_s.chars
   str << str.delete_at(-num2)
   str.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917