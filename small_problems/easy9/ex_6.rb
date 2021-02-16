
=begin
-----------------------INSTRUCTIONS--------------------------------------

How long are you?

Write a method that takes a string as an argument, and returns an Array that contains every word from the string, t
o which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.
--------------------------PROBLEM----------------------------------------

Input: string
Output: array 
---------------------------RULES-----------------------------------------
Explicit: array must contain all the words from the original string and also the length of each word

Implicit: 

--------------------------EXAMPLES---------------------------------------
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

----------------------------ALGO----------------------------------------
define method with str as arg
split string into array of words
iterate through the array and get the length of each word
prepend the word with the length
return the array of words and lengths
=end

def word_lengths(str)
  str.split.map do |word| 
    word + " " + word.length.to_s
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []