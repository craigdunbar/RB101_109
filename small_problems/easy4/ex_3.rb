# Leap Years (Part 1)

# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. 

# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

# -- PEDAC
# Input - integer greater than 0
# output - true for leap year, false in not
# rules - leap year if year / 4 == even
#       - if year also / 100 == even not leap year unless year / 400 == even
# Example 
# 2016 % 4 == 0 => even, 2016 % 100 == 16 => even => 2016%400 == even => return true
# 2015 % 4 == 3 => not even => false
# 2000 % 4 == 0, 2000 % 100 == 0, 2000 % 400 == 0 therefore return true
# 2100 % 4 == 0 => even, 2100 %100 == 0 => even, 2100 % 400 == 100 => not even therfore return false

# algorithm
# use if condition with &&

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 400 == 0
    true
  else
    false
  end
end

# LS solution

# def leap_year?(year)
#   if year % 400 == 0 
#     true
#   elsif year % 100 == 0 
#     false
#   else year % 4 == 0 
#   end
# end

# # or 

# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end

# def leap_year?(year) # this way makes all even years ending in 00 false
#   if year % 100 == 0
#     false
#   elsif year % 400 == 0
#     true
#   else
#     year % 4 == 0
#   end
# end

# def leap_year?(year)
#   if year % 4 == 0 && year % 100 != 0
#     true
#   elsif year % 400 == 0
#     true
#   else
#     false
#   end
# end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

