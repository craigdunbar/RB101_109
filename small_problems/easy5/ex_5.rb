# Clean up the words

# Given a string that consists of some words (all lowercased) 
# and an assortment of non-alphabetic characters, 
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

def cleanup(string)
  characters = ('a'..'z').to_a
  new_arr = []
  string.chars.each do |chr|
  if (characters).include?(chr)
    new_arr << chr 
  else new_arr << ' '
  end
end
p new_arr.join.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
