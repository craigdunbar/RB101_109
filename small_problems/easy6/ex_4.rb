=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.
--------------------------PROBLEM----------------------------------------

Input: array containing any number of elements
Output: original array in reverse order
---------------------------RULES-----------------------------------------
Explicit: return value is the same array, mutate the original array. if empty return empty

Implicit: 

--------------------------EXAMPLES---------------------------------------
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

----------------------------ALGO----------------------------------------
define the method with array arg
initalise temp array to hold elemwnts of original array
initialise iteration
pass array elements to temp array, last element first
and delete element from original array 
until temp_array is same size as original array
end first iteration
initialise second iteration
pass temp array telements back to original array
end iteration
return reverse array
=end

def reverse!(array)
  temp = []
  if array.empty? 
    return array
  end
  
  counter = array.size
  loop do 
    break if counter == 0
    temp << array[counter - 1] 
     array.delete_at(counter - 1 )
    counter -= 1
  end
  count = 0
  loop do
    array << temp[count]
    count += 1
    break if count == temp.size
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
