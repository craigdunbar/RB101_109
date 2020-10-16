# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(num)
  new_num = num.to_s.chars

  sum = 0 
  new_num.each do |digit|
  sum += digit.to_i
  end
 p sum
end

sum(496)
sum(123_456_789)