
# # Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. 
# Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk

# output:

# There are 4 characters in "walk".

# input:

# Please write word or multiple words: walk, don't run

# output:

# There are 13 characters in "walk, don't run".

# ask the user for an input string
# convert the string to an array
# remove the whitespace using join
# count the characters using size

puts "Please write a word or multiple words: "
str = gets.chomp
# characters = str.gsub(/\s+/, "") 
characters = str.delete(' ')
string_size = characters.size
puts "There are #{string_size} characters in #{str}"
