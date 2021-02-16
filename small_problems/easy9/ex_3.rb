
=begin
-----------------------INSTRUCTIONS--------------------------------------

Always Return Negative

Write a method that takes a number as an argument. 
If the argument is a positive number, return the negative of that number. 
If the number is 0 or negative, return the original number.
--------------------------PROBLEM----------------------------------------

Input: positive or negative number
Output: negative number
---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 

--------------------------EXAMPLES---------------------------------------
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

----------------------------ALGO----------------------------------------
define method with num as arg
if num is less than 0 return num
if num is greater than zero return negative num 
=end

# def negative(num)
#   if num <= 0
#   p num
#   else
#   p (num.to_s.insert(0, '-')).to_i # could just do -num!!
#   end
# end

#using a ternary op
def negative(num)
  num > 0 ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 