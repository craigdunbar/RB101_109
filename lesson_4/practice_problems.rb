# --- Practice Problem 1

# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3] as 'hi' is the last statement in the block which is truthy all elements are returned in a new array


# --- Practice Problem 2

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => 2 # Ruby docs "If a block is given, counts the number of elements for which the block returns a true value."

# --- Practice Problem 3

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end
# reject - Returns a new array containing the items in self for which the given block is not true.
# since puts returns nil the return value of the above block is 
# => [1, 2, 3]

# --- Practice Problem 4

# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#=> {"a"=>"ant", "b"=>"bear", "c"=>"cat"} 

# --- Practice Problem 5

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Removes a key-value pair from hsh and returns it as the two-item array [ key, value ]
# => [a, 'ant']

# --- Practice Problem 6

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size
# pop removes and returns the last element in the array, 
# size is being called on this return value and counts the number of characters in that element
#=> 11 

# --- Practice Problem 7

#What is the block's return value in the following code? 
#How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Passes each element of the collection to the given block. 
# The method returns true if the block ever returns a value other than false or nil
# since num.odd? is the last expression in the block it returns
# => true

#  --- Practice Problem 8

# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# from ruby docs "Returns first n elements from the array." take(n) → new_ary
#=> [1, 2] # new array so non destructive

# Practice Problem 9

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"] map is transfomrational and returns the same amount of elements as the original.
# because ant is less than 3 the if statement evalusted to false therefore value isnt returned  
# and the if statement returns nil

#  --- Practice Problem 10

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
# since the conditional will return false for the first  element the ouptut will be the num
# and then the next two elemnts will be nil since puts will be the last statement in the block
# => [1, nil, nil]

