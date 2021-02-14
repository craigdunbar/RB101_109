=begin
-----------------------INSTRUCTIONS--------------------------------------

Palindromic Substrings

Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters 
and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
In addition, assume that single characters are not palindrom
--------------------------PROBLEM----------------------------------------

Input: string
Output: array of palindromes
---------------------------RULES-----------------------------------------
Explicit: palindrome is a word thats has the same characters forwards and backwards
            follow sequence in initial string
            cosider all characters
            case must be the same
            singl letters should be ignored

Implicit: 

--------------------------EXAMPLES---------------------------------------
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

----------------------------ALGO----------------------------------------
define method with string arg
initialise palindrome variable with empty string
use substring method form last exercise to get all substrings
use reverse method to check for palindrome
add palindromes to variable
return palindromes
=end

# def palindromes(string)
#   new_str = ''
#   palindrome = []
#   counter = 0
#   loop do
#     break if counter == string.size
#     string.each_char.with_index do |chr,index|
#       new_str <<  (string[counter..index] + ' ')
#       end
#       counter += 1
#     end
# new_str.split.select do |word|
#         if word == word.reverse && word.size > 1
#             palindrome << word
#         else 
#             next
#         end
#     end
# p palindrome
# end

# further exploration

def palindromes(string) #--------> need to review 
  # require 'pry'
  new_str = ''
  palindrome = []
  counter = 0
  p new_string = string.gsub!(/[^a-z]/i, ' ')
  loop do
    break if counter == new_string.size
   new_string.each_char.with_index do |chr,index|
      new_str <<  (new_string[counter..index] + ' ')
      end
      # binding.pry
      counter += 1
    end
new_str.split.select do |word|
        if word == word.reverse && word.size > 1
            palindrome << word
            # binding.pry
        else 
            next
        end
    end
p palindrome.uniq
end
# p palindromes('abcd') == []
# p palindromes("Abc-bA") == []
# p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
  # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  # '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]