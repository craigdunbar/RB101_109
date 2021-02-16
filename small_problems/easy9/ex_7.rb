
=begin
-----------------------INSTRUCTIONS--------------------------------------

Name Swapping

Write a method that takes a first name, a space, and a last name passed as a single String argument, 
and returns a string that contains the last name, a comma, a space, and the first name.
--------------------------PROBLEM----------------------------------------

Input: string 
Output: string
---------------------------RULES-----------------------------------------
Explicit: returned string has last name first and first name last, sepreated by a comma

Implicit: 

--------------------------EXAMPLES---------------------------------------
swap_name('Joe Roberts') == 'Roberts, Joe'

----------------------------ALGO----------------------------------------
define method with strig as arg
split string into words
use array#reverse 
since the array only has two elements use a,b = b,a to swap the values
use array#join with a ', ' to return the string
=end

def swap_name(str)
  arr = str.split.reverse
  # arr[0], arr[1] = arr[-1], arr[0]
  p arr.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'