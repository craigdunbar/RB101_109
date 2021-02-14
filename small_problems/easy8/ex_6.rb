=begin
-----------------------INSTRUCTIONS--------------------------------------

fizzbuzz

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers between the two numbers, except if a number is divisible by 3, 
print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
--------------------------PROBLEM----------------------------------------

Input: two integers
Output: string of integers and words
---------------------------RULES-----------------------------------------
Explicit: each word divisable by 3 prints "fizz" divisable by 5 prints"buzz" divisable by 3 & 5 "fizzbuzz"

Implicit: 

--------------------------EXAMPLES---------------------------------------
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

----------------------------ALGO----------------------------------------
define method with two integer args
first arg is start of range, last number is end 
iterate through the range
if the current number%3 == 0 puts fizz
if the current number%5 == 0 puts buzz
if the current number%3 %% %5 == 0 puts fizzbuzz

=end
def fizzbuzz(num1, num2)
  arr = []
  (num1..num2).each do |int|
    if int%3 == 0 && int%5 == 0
      arr << "FizzBuzz"
    elsif int%3 == 0
      arr << "Fizz"
    elsif int%5 == 0 
      arr << "Buzz"
    else 
      arr << int
    end
  end
    arr.join(', ')
end

p fizzbuzz(1, 15) #== 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz