=begin
-----------------------INSTRUCTIONS--------------------------------------

The End Is Near But Not Here

Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.
--------------------------PROBLEM----------------------------------------

Input: string
Output: string - second last word of input string
---------------------------RULES-----------------------------------------
Explicit: words are delimited by spaces. string has at least 2 words

Implicit: 

--------------------------EXAMPLES---------------------------------------
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

----------------------------ALGO----------------------------------------
define method with string arg
use string split to seperate into individual words
use each with index to iterate through the string
determine the second from last word using index[-2]
print the word at index -2
=end

# def penultimate(str)
#   p str.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

#further exploration - need to return middle word from string
#edge cases - even number of words and only one word
def middle_word(str)
  arr = str.split
  if arr.count.odd?
    index = (arr.count/2.to_f).round(half: :up)
    p arr[index - 1]
  elsif arr.count.even? && arr.count > 0
    p "there is no middle word"
  else
    p ''
  end
end


p middle_word('last word') == 'there is no middle word'
p middle_word('Launch School is the greatest!') == 'is'
p middle_word('') == ''
