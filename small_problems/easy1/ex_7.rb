# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

def stringy(integer)
  array = []
  integer.times do |num|
      if num%2 == 0 
        array << 1
      else array << 0
      end
  end
  p array.join
end

stringy(6)  #'101010'