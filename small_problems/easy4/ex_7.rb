
#Convert a String to a Number!

#The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) 
#to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. 
#In this exercise, you will create a method that does the same thing.

#Write a method that takes a String of digits, and returns the appropriate number as an integer. 
#You may not use any of the methods mentioned above.

#For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

#You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
#Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# input 
# string
# output 
# integer

# rules
# cannot use to_i 
# must iterate through the string and analyse individual chars
# use string# chars and a counter
# use  a case statement to change string to integer

# def string_to_integer(string)
#   string_array = string.chars
#   integer_array = []
#   counter = 0
#   loop do
#     break if counter == string.size
#     case string_array[counter]
#       when '1' 
#         integer_array << 1
#       when '2'
#         integer_array << 2
#       when '3'
#         integer_array << 3
#       when '4'
#         integer_array << 4
#       when '5'
#         integer_array << 5
#       when '6'
#         integer_array << 6
#       when '7'
#         integer_array << 7
#       when '8'
#         integer_array << 8
#       when '9'
#         integer_array << 9
#       when '0'
#         integer_array << 0
#     end
#     counter += 1
#   end
#   value = 0
#   integer_array.each {|number| value = 10 * value + number}
#   value
# end

# # LS solution

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# #Examples
# p string_to_integer('12') == 12
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# Further exploration
# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.
# rules
#Use the decimal value for each hexadecimal digit. For 0-9, it is the same, but A = 10, B = 11, C = 12, D = 13, E = 14, and F = 15. 
# Start with the most significant digit (the digit on the far left). This is the first item in the sum.
# If another digit exists, multiply the sum by 16 and add the decimal value of the next digit.
# Repeat the above step until there are no more digits.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
  'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

# Example:

p hexadecimal_to_integer('4D9f') == 19871

