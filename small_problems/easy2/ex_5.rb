# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# input is a name
# output is a greeting
# if the name end with ! the greeting is all uppercase

puts 'What is your name'
name = gets.chomp

if name.end_with?('!') 
  # puts "HELLO #{name.upcase.delete_suffix('!')}. WHY ARE WE SHOUTING" => my solution
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SHOUTING?" # ls solution
else 
  puts "Hello #{name}"
end


