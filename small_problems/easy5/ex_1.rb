
# ASCII String Value

# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)
# Examples

# ascii_value('Four score') #== 984
# ascii_value('Launch School') #== 1251
# ascii_value('a') #== 97
# ascii_value('') #== 0

# PEDAC
# input string
# output integer

# Algorithm
# - with the given inout string convert the string to an array using string#chars
# - set a variable sum_of_ascii_values  to zero
# - loop through the array and using string#ord get the ASCII value of each character
# - add this value to the total
# - repeat for all the characters in the array

def ascii_value(string)
  sum_of_ascii_values = 0
  string.chars.each do |letter| 
  sum_of_ascii_values += letter.ord
  end
  sum_of_ascii_values
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Further Exploration

# There is an Integer method such that:

# char.ord.mystery == char

# mystery method == integer#chr
# will only return the first char of a longer string

