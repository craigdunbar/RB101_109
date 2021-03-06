
# Odd Lists

# # Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
# # The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# # the method should take an array as an arguement 
# # use a counter to select each element in an odd index
# # add it to a new array

# def oddities(array)
#   counter = 0
#   new_array = []
#   until counter >= array.size
#       new_array << array[counter]
#       counter += 2
#   end
#   new_array
# end  

# def oddities(array) # for even elements
#   counter = 1
#   new_array = []
#   until counter >= array.size
#       new_array << array[counter]
#       counter += 2
#   end
#   new_array
# end 

# def oddities(array)
#   new_array = []
#   counter = 0
#   array.each do |num|
#     if counter.even?
#       new_array << num
#     end
#     counter += 1
#   end
#   new_array
# end 

def oddities(array)
  new_array = []
  array.each_with_index do |num, index|
    if index.odd?
      new_array << num 
    end
  end
  new_array
end 

# LS solution

# def oddities(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []
