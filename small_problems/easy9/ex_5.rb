
=begin
-----------------------INSTRUCTIONS--------------------------------------

Uppercase Check

Write a method that takes a string argument, and returns true 
if all of the alphabetic characters inside the string are uppercase, 
false otherwise. Characters that are not alphabetic should be ignored
--------------------------PROBLEM----------------------------------------

Input: string
Output: boolean
---------------------------RULES-----------------------------------------
Explicit: return true if chars are all uppercase

Implicit: 

--------------------------EXAMPLES---------------------------------------
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

----------------------------ALGO----------------------------------------
define method with string as arg
delete non - aplha numeric chars from the string
check string == string.upcase
=end

def uppercase?(str)
str.gsub(/[^a-z]/i,' ') == str.gsub(/[^a-z]/i,' ').upcase
# str == str.upcase ----> this works since only lowercase letters can  be upcased
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true