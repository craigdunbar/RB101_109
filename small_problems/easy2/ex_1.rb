# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

puts "Enter a name"
name = gets.chomp
  if name.empty? 
    name = "Teddy"
  end
puts "#{name}'s age is #{rand(20..200)}"