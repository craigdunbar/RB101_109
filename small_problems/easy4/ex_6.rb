
# Running Totals

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

# --- PEDAC
# Input 
# array of numbers
# Output 
# array of numbers

# rules 
# output array will have same number of elements as original array
# but each element will be a running total of the original array

# algortithm 
# use a counter to determine the element in the array
# element at index 0 will be the same in the new array
# element at index 1 will be the sum of elements at index 0 + index 1
# element at index 2 will be the sum of element at index 2 + total of previous sum...

# def running_total(array)
#   counter = 0
#   # total = 0
#   totals_array = []
  
#   loop do
#     break if counter == array.size
#     if totals_array.empty?
#       sum = array[counter]
#     else sum = array[counter] + totals_array.last
#     end
#     totals_array << sum
#     counter += 1
#   end
#   totals_array
# end

# using map method

# def running_total(array)
#   sum = 0
#   array.map{|value| sum += value}
# end

# using each_with_object method

def running_total(array)
  sum = 0
  array.each_with_object([]) do |value, array|
    array << sum += value
  end
end

# try with inject method?

# Examples:

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
