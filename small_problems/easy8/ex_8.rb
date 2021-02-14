=begin
-----------------------INSTRUCTIONS--------------------------------------

Double Char (Part 2)

Write a method that takes a string, and returns a new string 
in which every consonant character is doubled. 
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
--------------------------PROBLEM----------------------------------------

Input: string
Output: new string
---------------------------RULES-----------------------------------------
Explicit: double every consonant only, ignore all the others

Implicit: 

--------------------------EXAMPLES---------------------------------------
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

----------------------------ALGO----------------------------------------
use the same method as before but with conditional
if chr is a consonant double it
if not return the chr
=end

def double_consonants(str)
    vowels = ['a', 'e', 'i', 'o', 'u']
    letters = ('a'..'z')
  arr = str.chars.map do |chr|
    if (vowels).include?(chr) 
      chr
    elsif !letters.include?(chr.downcase)
      chr
    else
      chr + chr
    end
  end
 p arr.join
end
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""