
# Leap Years (Part 2)

# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
# Prior to 1752, the Julian Calendar was used. 
# Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 175

def leap_year?(year)
  if year > 1752
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  else 
  year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# The Julian calendar, which began the year on March 25th, had been used throughout the Christian world since ancient times. But by the 16th century, scientists agreed that the old calendar improperly calculated the length of a year and was therefore falling gradually behind. During the reign of Pope Gregory XIII, a new calendar was created, called the Gregorian calendar. The new calendar, which began the year on January 1st, was adopted by most of Europe in 1582, but England and Henry VIII had broken with Rome and therefore did not adopt the new calendar.

# Scotland, however, was not yet united to England in 1582. The Scottish government decided that January 1st made a better New Year’s Day than March 25th, so the decision was made to make January 1, 1599 the new January 1, 1600. As a result, 1599 had only nine months. But that was as far as the change took place in Scotland.

# The other change that took place when Europe adopted the Gregorian calendar in 1582 was that 10 days were dropped from the calendar. But Scotland did not follow suit, so year after year in Scotland, as in England, the Julian calendar fell gradually further and further behind. By 1752, Scotland had been (reluctantly) united to England, so when England changed to the Gregorian calendar that year and dropped 11 days, Scotland did the same.