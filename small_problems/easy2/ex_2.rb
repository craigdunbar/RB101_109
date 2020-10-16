# write a program that asks for the length and width of a room in meters
# calcualte the area of the room by multiplying the two inputs
# display the area in square meters and also square feet ( 1 square meter == 10.7639 square feet)

# puts "Enter the length of the room in meters"
# length = gets.chomp.to_f

# puts "Enter the width of the room in meters"
# width = gets.chomp.to_f

# area_meters = (length * width).round(2)
# area_feet  = (area_meters * 10.7639).round(2)

# puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)"

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

puts 'Enter the length of the room in feet'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet'
width = gets.chomp.to_f

area_feet = (length * width).round(2)
area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)
area_cm = (area_feet * SQFEET_TO_SQCENTIMETERS).round(2)

puts "The area of the room is #{area_feet} square feet or #{area_inches} square inches or #{area_cm} square cm"
