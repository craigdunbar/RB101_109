# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# # The product of the integers between 1 and 6 is 720.

# first input is an integer
# second input is a string
# output is either the sum of the numbers making up the integer or the product

# rules
# if string == s then we need to sum the numbers
# ie start with 1 and add the next number to it. Keep a total and then add the next number to the total. Repeat  until you reach the given integer
# if string == p multiply each number that comes before the given intger
# ie start with 1 and multiply by the next number. Keep this total and then multiply it by the next number. Repeat  until reach the given integer

puts "Please enter an integer greater than 0"
number = gets.chomp.to_i

puts "Please enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
 total = 0
  1.upto(number) { |value| total += value }
  p total
elsif operation == 'p'
   total = 1
  1.upto(number) { |value| total *= value }
  p total
else
  puts "invalid entry"
end
