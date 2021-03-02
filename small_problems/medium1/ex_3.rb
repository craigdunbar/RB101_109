=begin
-----------------------INSTRUCTIONS--------------------------------------
Rotation (Part 3)

If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. 
Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

735291 ==> 352917 ==> 329175 ==> 321759 ==> 321597 ==> 321579
--------------------------PROBLEM----------------------------------------

Input: integer
Output: integer
---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 

--------------------------EXAMPLES---------------------------------------
735291 ==> 352917 ==> 329175 ==> 321759 ==> 321597 ==> 321579

----------------------------ALGO----------------------------------------
define method with int as arg
convert the integer to an array of chars
iterate throught the array 
    take the element at the same index as the iteration and delete it from that index 
    and push it to the back of the integer
=end

# def max_rotation(num)
#   str = num.to_s.chars
#   str.each_with_index do |_,i|
#     str << str.delete_at(i)
#   end
#   str.join.to_i
# end

# further exploration
# the only way i can see to keep the leading zero's is to keep the rotated num as a string...
def max_rotation(num)
  str = num.to_s.chars
  str.each_with_index do |_,i|
    str << str.delete_at(i)
  end
  puts str.join
end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(3005) == 0503