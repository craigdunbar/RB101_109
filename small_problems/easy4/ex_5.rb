
# Multiples of 3 and 5

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# input is an integer
# output is an interger
# rules find all the multiples of 3 or 5 and sum all these multiples

# multiples of 3 will be 3, 6, 9, 12 .. up to the given number.
# multiples of 5 will be 5, 10, 15... up to the given number.

# algorithm
# use a loop to add the multiples to an array up to an including the given number
# assign a counter and start with 3 then increment the counter by 3 each iteration until given number is reached.
# do the same for 5
# sum the contents of the new array.

# def multisum(given_number)
# array = []
# counter_3 = 3
# while counter_3 <= given_number
#   array << counter_3
#   counter_3 += 3
# end
# counter_5 = 5
# while counter_5 <= given_number
#   array << counter_5
#   counter_5 += 5
# end
# array.uniq.sum
# end

# refactor using select method

# def multisum(given_number)
#   array = (1..given_number).to_a
#   multiples = array.select do |num|
#     num % 3 == 0 || num % 5 == 0
#   end
#   multiples.sum
# end

# LS Solution
# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end

# Further exploration - using enumerable#inject
# from ruby docs
# # Sum some numbers
# (5..10).reduce(:+)                             #=> 45
# # Same using a block and inject
# (5..10).inject { |sum, n| sum + n }            #=> 45

def multisum(given_num)
(1..given_num).select {|n| n % 3 == 0 || n % 5 == 0}.inject(:+)
end


# Examples

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum(20) == 98
