=begin
-----------------------INSTRUCTIONS--------------------------------------

Leading Substrings

Write a method that returns a list of all substrings of a string 
that start at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring.
--------------------------PROBLEM----------------------------------------

Input: string 
Output: array of substrings
---------------------------RULES-----------------------------------------
Explicit: array should be from shortest to longest substrings

Implicit: 

--------------------------EXAMPLES---------------------------------------
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

----------------------------ALGO----------------------------------------
define the method with array arg
initalise a new_arr
iterate through the string making the substrings starting at index 0

=end
def leading_substrings(string)
  new_str = ''
  string.each_char.with_index do |chr,index|
    new_str <<  (string[0..index] + ' ')
  end
new_str.split 
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']