# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# inputs
# get age
# get retirement age

# output
# years to retierment
# year of retirement

#algorithm
# years to retirement = retirement age - current age
# year of returement = current year + years to retirement

#CURRENT_YEAR = 2020 => my solution

puts 'What is your age?'
age = gets.chomp.to_i
puts 'When do you want to retire?'
retirement_age = gets.chomp.to_i

current_year = Time.now.year # => ls solution
years_to_retirement = retirement_age - age
year_of_retirement = Time.now.year + years_to_retirement

puts "It's #{current_year} and you will retire in #{year_of_retirement}"
puts "You have #{years_to_retirement} years more work!"
