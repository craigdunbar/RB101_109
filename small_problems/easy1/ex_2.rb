# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.

def is_odd?(num)
  if num%2 != 0
    puts true
  else
    puts false
  end
end

 is_odd?(2)    # => false
 is_odd?(5)    # => true
 is_odd?(-17)  # => true
 is_odd?(-8)   # => false
 is_odd?(0)    # => false
 is_odd?(7) 