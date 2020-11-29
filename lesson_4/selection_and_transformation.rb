# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list)
#   items = produce_list.keys
#   select_fruit = {}
#   counter = 0
  
#   loop do
#   break if counter == items.size
#   current_key = items[counter]
#   current_value = produce_list[current_key]
#     if current_value == 'Fruit'
#       select_fruit[current_key] = current_value
#     end
#     counter += 1
#   end
#   select_fruit
# end

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# The code below multiplies each element in the collection by 2.

# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2

#     counter += 1
#   end

#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

# # Can you implement a double_numbers! method that mutates its argument?

# def double_numbers!(numbers)
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2

#     counter += 1
#   end
#   numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers!(my_numbers)
# p my_numbers

# Here, we only multiply by 2 if the value is odd. 
# The if condition will only evaluate to true if current_number is odd (we check this using Integer#odd?).

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if current_number.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]

# def double_odd_index(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_index(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]

# Recall earlier we wrote a select_fruit method 
# that selected fruits out of the produce_list hash of fruits and vegetables. 
# Suppose we wish to now write a more generic general_select method 
# so that we can specify whether we're interested in selecting fruits or vegetables. 
# Here's how we could build such a method:

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# def select_fruit(produce_list, selection)
#   items = produce_list.keys
#   select_fruit = {}
#   counter = 0
  
#   loop do
#   break if counter == items.size
  
#   current_key = items[counter]
#   current_value = produce_list[current_key]
  
#     if current_value == selection
#       select_fruit[current_key] = current_value
#     end
#     counter += 1
#   end
#   select_fruit
# end

# p select_fruit(produce, 'Vegetable') 
# p select_fruit(produce, 'Fish') 

# Continuing on with the idea of building generic methods, 
# let's update our double_numbers method to not only be able to 
# double the values in an array, but to multiply by any number. 
# For example, let's create a method called multiply 
# that can take an additional argument to determine the transformation criteria.

def multiply(numbers, multiplier)
multiplied_numbers = []
counter = 0

  loop do
    break if counter == numbers.size
  
    current_number = numbers[counter]
    current_number *= multiplier 
    multiplied_numbers << current_number
  # multiplied_numbers << numbers[counter] * multiplier
    counter += 1
  end
  
  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers
