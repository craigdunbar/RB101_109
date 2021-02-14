=begin
-----------------------INSTRUCTIONS--------------------------------------

Sum of Sums

Write a method that takes an Array of numbers and then returns 
the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.
--------------------------PROBLEM----------------------------------------

Input: array
Output: integer
---------------------------RULES-----------------------------------------
Explicit: return the sum of all the subsewquences in the array
          arrya is never empty

Implicit: 

--------------------------EXAMPLES---------------------------------------
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

----------------------------ALGO----------------------------------------
define method with array arg 
initalise a total variable = 0
using each with index 
iterater throughn the array and sum the contents of 
  el at index and el at index -1
  add hte sum to the total variable
next iteration
end
return the total
  
=end

def sum_of_sums(array)
  total = 0
  array.each_with_index do |_,i|
    total += array[0..i].sum
  end
  p total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35