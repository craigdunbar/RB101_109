=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, 
and each subsequent number is the sum of the two previous numbers.
--------------------------PROBLEM----------------------------------------

Input: integer arg
Output: integer representing the fib num that contains the number of digits in the integer arg
---------------------------RULES-----------------------------------------
Explicit: first two nums are 1, next num is sum of previous 2 nums
Implicit: all positive integers

--------------------------EXAMPLES---------------------------------------
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

----------------------------ALGO----------------------------------------
define metho with integer as arg
start counter at 0 
generate an array of numbers
each num is the sum of the previous two nums
continue generating nums until the number of digits == the given parameter

=end

# fib_arr = [1,]

def find_fibonacci_index_by_length(int)
 fib_array = [1,1]
  counter = 1
  loop do 
    break if fib_array.last.digits.count  == int
    next_num = (fib_array[counter] + fib_array[counter - 1])
    fib_array << next_num
    counter += 1
  end
    # counter =+ 1
    # break if fib_array.last.digits.count  == int
 fib_array.count
end

# p find_fibonacci_index_by_length(2) == 7 
# p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847