
=begin
-----------------------INSTRUCTIONS--------------------------------------

Double Doubles

A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, 
unless the argument is a double number; double numbers should be returned as-is.
--------------------------PROBLEM----------------------------------------

Input: integer
Output: integer
---------------------------RULES-----------------------------------------
Explicit: return the integer doubled unless its a double nuumber

Implicit: integers are positive

--------------------------EXAMPLES---------------------------------------
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

----------------------------ALGO----------------------------------------
define method with integer arg
spilt the int into digits using .to_s and chars and then count the digits
if int has odd number of digits double int
if int is even,
use the element reference to look at the first half and second half of the digits
if they are the same return the original int
=end

def twice(num)
  middle = num.to_s.chars.count/2
  digits = num.to_s.chars
  counter = num.to_s.chars.count
  if counter.odd?
    num * 2
  elsif counter.even? && digits[0..(middle - 1)] == digits[(middle)..(counter-1)]
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10