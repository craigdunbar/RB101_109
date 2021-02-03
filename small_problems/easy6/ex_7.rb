
# -----------------------INSTRUCTIONS--------------------------------------
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# --------------------------PROBLEM----------------------------------------

# Input: array of integers
# Output: an array of two arrays 
#         first array will contain first half of original array
#         second array will contain second half of original array
# ---------------------------RULES-----------------------------------------
# Explicit: if the original array containd an odd number of elements 
#           then the first array should contain the middle element

# Implicit: if original array is empty return an array of two empty arrays.
#           if original array only has one element, the returned array will have an empty second array

# --------------------------EXAMPLES---------------------------------------

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]
# ----------------------------ALGO----------------------------------------
# pseudcode:
# define the method take an array as arg
# split_array = []
# first_array = []
# second_array = []

# determine array size
# if the array is odd, then first array will be array/2 + middle element
# add first elemnts to the first empty array
# add remaining elements to the second array
# combine both arrays

# first_array = first(3)

# ([1, 5, 2, 4, 3].size/2.to_f).round(half: :up)

def halvsies(array)
  first = []
  second = []
  half_count = (array.size/2.to_f).round(half: :up)
  first << array[0..half_count- 1]
  second << array[(half_count)..(array.size - 1)]
  first + second
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]