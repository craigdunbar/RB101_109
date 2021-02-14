=begin
-----------------------INSTRUCTIONS--------------------------------------

All Substrings

Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, 
then all substrings that start at position 1, and so on. 
Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise
--------------------------PROBLEM----------------------------------------

Input: string
Output: array containing all substrings of given string
---------------------------RULES-----------------------------------------
Explicit: start at index 0 of given string, then index 1 and so on
            return string should be in order of smallest to largest

Implicit: 

--------------------------EXAMPLES---------------------------------------
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

----------------------------ALGO----------------------------------------
define method with string as arg
start to iterate through the string using each ----> main loop
start the inner loop iteration using each with index 
    --> use method from ex_3.rb
end inner loop
next iteration of outer loop
return all sub-strings
=end

def substrings(string)
  new_str = ''
  counter = 0
  loop do
    break if counter == string.size
    string.each_char.with_index do |chr,index|
      new_str <<  (string[counter..index] + ' ')
      end
      counter += 1
    end
p new_str.split  
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]