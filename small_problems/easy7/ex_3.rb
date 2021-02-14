=begin
-----------------------INSTRUCTIONS--------------------------------------

Capitalize Words

Write a method that takes a single String argument and returns a new string 
that contains the original value of the argument with the first character
of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.
--------------------------PROBLEM----------------------------------------

Input:  string
Output: string with each word first character capitalised
---------------------------RULES-----------------------------------------
Explicit: first letter in word is uppercase and other letters lowercase
Implicit: if word is quoted it should be skipped

--------------------------EXAMPLES---------------------------------------
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

----------------------------ALGO----------------------------------------
define mwthod with string 
split the string into an array of words
initalise loop construct to 
iterate torugh the array capitalising each word unless word is delimited by another set of quotes

=end

# def word_cap(string)
#   arr = string.split.map do |word|
#   word.capitalize
#   end
# p arr.join(" ")
# end

# Further exploration

# def word_cap(string)
#   arr = string.split.map do |word|
#       word.upcase!
#       word = word[0] +  word[1..word.size].downcase
#       end
#   arr.join(' ')
# end


def word_cap(string)
  arr = string.split.map do |word|
    word.downcase!
    word.prepend(word.slice!(0).upcase) # use slice(0) to select the first element and mutate to upcase, then use prepend to add to the start of stirng
  end
 arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
