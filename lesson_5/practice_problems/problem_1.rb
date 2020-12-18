# Practice Problem 1

# How would you order this array of number strings by descending numeric value?
# First way

arr = ['10', '11', '9', '7', '8']
# counter = 0
# int_arr = []
# loop do
#   break if counter == arr.size
#   int_arr << arr[counter].to_i
#   counter += 1
#   end
# p int_arr.sort.reverse

# using map

int_arr = []
arr.map do |el|
  int_arr << el.to_i
end
p int_arr.sort.reverse!

# # LS solution 
# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end