=begin
-----------------------INSTRUCTIONS--------------------------------------
Get The Middle Character

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.
--------------------------PROBLEM----------------------------------------

Input: string
Output: one or two characters from middle of string if odd ot even
---------------------------RULES-----------------------------------------
Explicit: string is not empty. return one character for odd, two for even 

Implicit: count space as character

--------------------------EXAMPLES---------------------------------------
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

----------------------------ALGO----------------------------------------
define method with string as arg
get string length
if length is even return middle character
middle_chr = length/2 + 1
if odd return two characters
middle _chr = length/2 +1 and +2

=end

def center_of(string)
 length = string.size
 middle = length/2
  if length.odd?
  string[middle]
  else
  string[middle - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'