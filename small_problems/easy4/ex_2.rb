
# What Century is That?

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# input is an integer
# divide the integer by 100 plus 1 to get the century 
# add the suffix
#  - convert the century to a string
#  - look at the last digit to determine the suffix
  # 1 == st
  # 2 == nd
  # 3 == rd
  # 4 - 20 == th
  # 21 == st
  # 22 == nd
  # 23 == rd
  # 24 - 30 == th
# - consider 11th, 12th, 13th
# - need to look at second digit

def century(year)
century = year/100 + 1
  if year % 100 == 0
    century -= 1
  end
century = century.to_s
 
  if century[-2] == '1' 
    century << "th"
  elsif century[-1] == '1' 
    century << "st"
  elsif century[-1] == '2' 
    century << "nd"
  elsif century[-1] == '3' 
    century << "rd"
  else century << "th"
  end
end



# Examples:

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'