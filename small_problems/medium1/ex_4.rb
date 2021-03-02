=begin
-----------------------INSTRUCTIONS--------------------------------------

1000 Lights

You have a bank of switches before you, numbered from 1 to n. 
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. 
You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. 
On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, 
and returns an Array that identifies which lights are on after n repetitions.
--------------------------PROBLEM----------------------------------------
Input: intger
Output: array of integers
---------------------------RULES-----------------------------------------
Explicit: 

Implicit: 

--------------------------EXAMPLES---------------------------------------
Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

n = 5
1 - [1, 2 ,3, 4, 5]   [1, 1, 1, 1, 1]
2 - [1, 3, 5]         [1, 0, 1, ,0, 1]
3 - [1, 5]            [1, 0, 0, 0, 1]
4 - [1, 4, 5]         [1, 0, 0, 1, 1]
5 - [1, 4]            [1, 0, 0, 1, 0]

----------------------------ALGO----------------------------------------
define method with integer as arg
initalise a new hash with all values == 1
initalise an empty array
set counter = 0
initalise a loop
  iterate through the array flipping the value of each element that has index%counter == 0
  ie of element is a one, change it to zero and vice versa
  break loop when counter == given integer
  select the elements that are 1 and return an array of the index of these elments
=end

def lights_on(num)
lights = Hash.new(0)
counter = 2
(1..num).each { |k| lights[k] = 1}
arr = []
loop do
  break if counter > lights.size
  lights.each do |k,v|
    if k%counter == 0 && v == 1
      lights[k] = 0
    elsif k%counter == 0 && v == 0
      lights[k] = 1
    else
      next
    end
  end
  counter += 1
end
lights.select do |k,v| 
  if v == 1
  arr << k
  end
end
arr
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]