
# Convert a String to a Signed Number!

# In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
# In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# The String may have a leading + or - sign; if the first character is a +, 
# your method should return a positive number; if it is a -, 
# your method should return a negative number. If no sign is given, you should return a positive number.

# # You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Y
# ou may, however, use the string_to_integer method from the previous lesson.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

# def string_to_integer(string)
#   p digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end
# LS solution

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# I couldn't get there but I was looking for a way to remove the [nil] element in map and then add the negative at the end.
# This is how it could've been done.

def string_to_signed_integer(string)
  array = string.chars.map{|char| char = DIGITS[char]}.compact
  value = 0
  array.each{|digit| value = 10 * value + digit}
  string.start_with?("-") ? -value : value
end

# Examples

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100