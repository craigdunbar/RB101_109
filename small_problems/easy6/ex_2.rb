# # Delete vowels

# # Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# input: array of strings
# output: new array of strings
#         all volwels removed
        
# pseudo code
# define method with array as arg
# initaalize new empty array
# start at index 0 for first element
# set a counter to 0
# begin iteration
# go through the array looking at each element
  # inner loop  to seperate each element 
  #   split each element into individual characters
# and compare to the conditional
 
#   if the element is a not a vowel 
#     element is sent to the new array
#   if not it is a vowel 
#     move to the next element
  
# break from the loop when all the elements have been checked

#   return the new array without the vowels
 
# end

def remove_vowels(array)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E','I', 'O', 'U']
  no_vowels = []
  counter = 0
  loop do
    word = array[counter]
    string = word.chars
    new_word = []
    count = 0
    loop do
      chr = string[count]
      new_word << chr if !vowels.include?(chr)
      count += 1
      break if count == word.size
    end
    no_vowels << new_word.join
    counter += 1
    break if counter == array.size
  end
  no_vowels
end



# Example:

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
