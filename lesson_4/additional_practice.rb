# # --- Practice Problem 1

# # Given the array below

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# # Turn this array into a hash where the names are the keys and the values are the positions in the array

# flintstones_hash = {}

# flintstones.each_with_index do |name, index|
# flintstones_hash[name] = index
# end

# p flintstones_hash


# Practice Problem 2
# Add up all of the ages from the Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# total = 0

# ages.each {|key, value| total += value}

# p total

# ---- Practice Problem 3
# In the age hash: remove people with age 100 and greater.

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.delete_if {|key, value| value > 100 }
# p ages

# --- Practice Problem 4

# Pick out the minimum age from our current Munster family hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min # i was trying to build a loop fo this

# ---Practice Problem 5

# In the array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# p flintstones.index{|x| x[0, 2] =='Be'} # remember use the element selection and range to check first two letters

# ---Practice Problem 6

# Amend this array so that the names are all shortened to just the first three characters:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones.map! {|name| name[0, 3]}

#  ---Practice Problem 7

# # Create a hash that expresses the frequency with which each letter occurs in this string:

# statement = "The Flintstones Rock"

# # ex:

# # { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# def counting_letters(statement)
# keys = statement.chars
# count_letters = {}
# counter = 0
# loop do
#   break if counter == keys.size
#   current_letter = keys[counter]
#   frequency = keys.count(current_letter)
#   count_letters[current_letter] = frequency unless current_letter == ' '
# counter += 1
# end
# count_letters
# end

# p counting_letters(statement)

# Practice Problem 8

# What happens when we modify an array while we are iterating over it? What would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
# #=> this will print 1 and 3 because each starts at index 0  then shift removes the first element so now 2 is in index 0
# # so when each moves on to the next iteration which is index 1 and is now the numbers 3
# # then shift removes the first element agian so 3 is at index 0, now each looks for the next iteration which is index 2 but the array has now only two elements therfore index 2 is not there.

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

#=> this will print 1 and 2 since each iteration it removes the last element
# iteration one prints 1 and removes 4
# iteration two prints 2 and removes 3
# done

# --- Practice Problem 9

# As we have seen previously we can use some built-in string methods to change the case of a string. 
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize. 
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. 
# For example, the string:
# words = "the flintstones rock"
# would be:

# words = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.
# array = words.split
# array.each {|word| word.capitalize!}
# p array.join(' ')

# Practice Problem 10

# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

munsters.each do |key, values|
  
if (0..17).include?(values['age'])
  values['age_group'] = 'kid'
elsif (18..64).include?values['age']
  values['age_group'] = 'adult'
else 
  values['age_group'] = 'senior'
end
end
puts munsters

# LS solution
# munsters.each do |name, details|
#   case details["age"]
#   when 0...18
#     details["age_group"] = "kid"
#   when 18...65
#     details["age_group"] = "adult"
#   else
#     details["age_group"] = "senior"
#   end
# end
