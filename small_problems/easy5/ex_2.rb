
# After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# # Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Disregard Daylight Savings and Standard Time and other complications.

# PEDAC
# input integer
# output string

# rules
# minutes in a day == 1440
# midnight == 1440 minutes = "00:00"
# if given integer is negative then it's before midnight
# if given integer is positive then its after midnight.

# 1400 + given integer = time to convert to string
# 1400 - 70 = 1370
# 1370 / 60 = 22.83 22 = hours 0.83*60 = minutes => 22 hours 49.8.round => 50 mins => 23:50
# 1440 + 800 = 2240 mins = 2240/60 = 37.33 = 37 hours 20 minutes = 13:20

# add given integer to 1440.
# divide total by 60, to get hours.
# if hours > 24 subtract 24 from hours to get time past midnight 
# multiply the float values after the decimal by 60 and round to get minutes 

def time_of_day(int)
  clock = []
  days = (int / 1440).round
  minutes= (1440 + int)
  if minutes >= 1440
    minutes = int - (1440 * days)
  elsif minutes < 0
    minutes = -(-int - (1440 * ((-int.to_f / 1440).round)))
  else
    minutes
  end
  hours = "%05.2f" % (minutes.to_f / 60)
  arr = hours.to_s.chars
  clock << arr[0, 2].join
  minutes24 = "%02d" % (arr[3, 2].join.to_i * 0.6).round
  clock << minutes24
  clock.join(':')
end

# LS solution
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
# p  delta_minutes =  delta_minutes % MINUTES_PER_DAY
#  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(754)