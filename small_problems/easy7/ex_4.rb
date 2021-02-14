=begin
-----------------------INSTRUCTIONS--------------------------------------

Swap Case

Write a method that takes a string as an argument and returns a new string in which 
every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. 
All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.
--------------------------PROBLEM----------------------------------------

Input:  sting with up and down case characters
Output: same string but with the up and down case reversed
---------------------------RULES-----------------------------------------
Explicit:cannot use swapcase 
Implicit: 

--------------------------EXAMPLES---------------------------------------
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

----------------------------ALGO----------------------------------------
initialise upcase constant
initalise downcase constant

define method with string as arg
break string into chars 
iterate through the chars array using map
inspect each char for upccase or downcase
swap the cases
return the trandformed array as a string using join

=end

UPCASE = ('A'..'Z').to_a
DOWNCASE = ('a'..'z').to_a

def swapcase(string)
  arr = string.chars.map do |str|
      if UPCASE.include?(str)
          str.downcase
      elsif DOWNCASE.include?(str)
        str.upcase
      else 
        str
      end
  end
 arr.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'