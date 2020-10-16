# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers. 
# result should also be an integer.

def average(array)
  ave = array.sum.to_f / array.count.to_f
p ave
end 

average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
average([1, 5, 87, 45, 8, 8])# == 25