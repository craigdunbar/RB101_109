# Short Long Short

# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, 
# and then returns the result of concatenating 
# the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# use string.length to find the longest string
# use if statement to determine which string goes first
# use concatenation to add the strings

def short_long_short(str1, str2)
  if str1.length < str2.length
    "#{str1}"+"#{str2}"+"#{str1}"
  else
    "#{str2}"+"#{str1}"+"#{str2}"
  end
end

# #using a ternaty operator
# def short_long_short(str1, str2)
#   str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
# end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"