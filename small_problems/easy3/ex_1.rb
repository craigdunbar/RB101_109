
#  -- Searching 101

# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not the 6th number 
# appears amongst the first 5 numbers.

# using puts ask the user to enter a number 5 numbers
# add these numbers to an array
# ask for the last number 
# check the array to see if that number is already included.

input_arr = ["1st", "2nd", "3rd", "4th", "5th"]
counter = 0
arr = []
loop do 
  puts "Please enter the #{input_arr[counter]} number"
  number = gets.chomp.to_i
  arr << number
  counter += 1
  break if arr.size == 5
end
puts "Please enter the last number"
last_number = gets.chomp.to_i

if arr.include?(last_number)
  puts "The number #{last_number} appears in #{arr}"
else 
  puts "The number #{last_number} does not appear in #{arr}"
end
