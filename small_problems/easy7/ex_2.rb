=begin
-----------------------INSTRUCTIONS--------------------------------------

Lettercase Counter

Write a method that takes a string, and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters, 
one the number of characters that are uppercase letters, and one the number of characters that are neither.
--------------------------PROBLEM----------------------------------------

Input:  string
Output: hash contianing a list of characters in the string
---------------------------RULES-----------------------------------------
Explicit: count occurances of uppercase, lowercase and other characters
            return a hash with the count of each category
            return 0 if the category is not found
            count spaces as neither category
Implicit: 

--------------------------EXAMPLES---------------------------------------
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

----------------------------ALGO----------------------------------------
define method with string as arg
initalise 2 constants or arrays one with uppercase characters and one with lower case characters
initalise a 3 element array lowercase, uppercase, neither as first element of each subarray
second element will be set to equal 0 at the start.
break the string down to individual characters 
iterate through the string and compare to the first constant and couunt the occurances
repeat with the next constant
compare the sum  of first two iterations to the stringn size to get the final "neither" character count.

=end

# def letter_case_count(string)
#   lower = ('a'..'z').to_a
#   upper = ('A'..'Z').to_a
#   lowercase = []
#   uppercase =[]
#   neither = []
#   characters = []

#   string.chars.each do |chr|
#     if lower.include?(chr)
#       lowercase << chr
#     elsif upper.include?(chr)
#       uppercase << chr
#     else
#       neither << chr
#     end
#   end
  
#   characters << [:lowercase,lowercase.count] << [:uppercase, uppercase.count] << [:neither, neither.count]
#   characters.to_h
# end

# refactored#
def letter_case_count(string)
  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  
  characters = {lowercase: 0, uppercase: 0, neither: 0}

  string.chars.each do |chr|
    if lower.include?(chr)
      characters[:lowercase] += 1
    elsif upper.include?(chr)
      characters[:uppercase] += 1 
    else
      characters[:neither] += 1
    end
  end
  p characters
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }