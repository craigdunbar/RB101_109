=begin
-----------------------INSTRUCTIONS--------------------------------------

Double Char (Part 1)

Write a method that takes a string, and returns a new string in which every character is doubled.
--------------------------PROBLEM----------------------------------------

Input: string
Output: new string
---------------------------RULES-----------------------------------------
Explicit: new string contians double every character in original string

Implicit: 

--------------------------EXAMPLES---------------------------------------
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

----------------------------ALGO----------------------------------------
define method with string as arg
break string into chars
iterate through chars with map and double each character
return new array with join
=end
def repeater(str)
  arr = str.chars.map do |chr|
    chr + chr
  end
 p arr.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''