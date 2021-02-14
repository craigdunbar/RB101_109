=begin
-----------------------INSTRUCTIONS--------------------------------------

Multiplicative Average

Write a method that takes an Array of integers as input, multiplies all the numbers together, 
divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. 
Assume the array is non-empty.
--------------------------PROBLEM----------------------------------------

Input: array
Output: float to 3 dp
---------------------------RULES-----------------------------------------
Explicit: ints are positive

Implicit: 

--------------------------EXAMPLES---------------------------------------
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

----------------------------ALGO----------------------------------------
define method with array as arg
initalise a total variable
initalise a counter
iterate through the array 
  set the first value in total as the first element times 1
multiply contents of array and change to float
divide sum by number of elements
display 3 dp
=end
# def show_multiplicative_average(array)
#   counter = 1
#   total = array[0]
#   loop do
#     break if counter == (array.size)
#     total = (array[counter]*total)
#     counter += 1
#     end
# num = ((total.to_f)/ array.count)
# puts "The result is #{sprintf("%0.3f", num)}"
# end

#refactor

# def show_multiplicative_average(array)
#   total = 1
#   array.each do |el|
#     total *= el
#   end
# average = total.to_f/ array.size
# puts "The result is #{sprintf("%0.3f", average)}"
# end

#using inject method
def show_multiplicative_average(array)
  # average = ((array.inject { |sum, n| sum * n }).to_f)/ array.count 
  average = ((array.inject(:*).to_f)/ array.size) 
 puts "The result is #{sprintf("%0.3f", average)}"
end


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667