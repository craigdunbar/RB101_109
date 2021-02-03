=begin
-----------------------INSTRUCTIONS--------------------------------------

Combining Arrays

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.
--------------------------PROBLEM----------------------------------------

Input: two arrays
Output: single array made up of two original arrays with duplicates removed
---------------------------RULES-----------------------------------------
Explicit: arrays contain positive integers

Implicit: 

--------------------------EXAMPLES---------------------------------------
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

----------------------------ALGO----------------------------------------
define methos with 2 arrays as args
combine first and secnd array together
remove any duplicates
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# LS solution         
def merge(arr1, arr2)
  arr1 | arr2
end
# froms docs
# array | other_array → new_array

# Returns the union of array and Array other_array; duplicates are removed; order is preserved; items are compared using eql?:

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]