=begin
-----------------------INSTRUCTIONS--------------------------------------
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.
--------------------------PROBLEM----------------------------------------

Input: integer
Output: string of spaces and stars
---------------------------RULES-----------------------------------------
Explicit: display a 4 pointed star, integer will always be odd

Implicit: 

--------------------------EXAMPLES---------------------------------------
3
 *
***
 * 
 
n= 5 
  *
 ***
*****
 ***
  *
first row = 2 spaces then 1 star n-1/2 = 2 spaces
second row = 1 space then 3 stars n-2/2 = 1 space
third row = no spaces and 5 stars n-3/2
fourth row = 1 space and 3 stars
fifth row = two spaces and 1 star

diamond(9)

4    *
3   ***
2  *****
1 *******
0*********
1 *******
2  *****
3   ***
4    *
first row has n-1/2spaces then puts 1 '*'
second row has n-3/2 spaces then puts 3 '*'
third row has n-5/2 spaces then puts  5 '*'
fourth row has n-7/2 spaces 7'*''
fifth row has n-9/2 spaces  then 9 '*'
then back the other way
----------------------------ALGO----------------------------------------
define method with integer as arg
middle row == n/2 
initalise a counter = 1
initalise a loop 
break if counter == n
 on each iteration puts n-counter/2 spaces + '*'
 increse counter by 2
 end loop
 initalise a second counter at n - 2
 initalise a second loop 
 brek if counter == n-1/2
 on each iteration puts counter/2 spaces + '*'
 increase counter by 2
 end loop 
=end

# def diamonds(n)
#   counter = 1
#   loop do
#     break if counter == n
#   spaces =  ((n-counter)/2)
#   (spaces).times do 
#     print " "
#     end
#   (counter).times do
#     print '*'
#   end
#     counter += 2
#   puts "\n"
#   end
#   count = n
#   loop do
#     break if count < 1
#     spaces =  ((n-count)/2)
#     (spaces).times do 
#     print " "
#     end
#     (count).times do
#       print "*"
#     end
#     count -= 2
#     puts "\n"
#   end
# end

# diamonds(3)
# diamonds(5)
# diamonds(9)

# further exploration - modify the solution so it only prints the outline of the diamond
# diamond(5)

#   *
#  * *
# *   *
#  * *
#   *

# def skip_stars(counter, spaces)
#   skip_stars = (counter/spaces).times do 
#       print " "
#   end
# end

def diamond(n)
  counter = 1
  arr = []
  
  loop do
    break if counter == n
    spaces =  ((n-counter)/2)
    (spaces).times do 
      # print " "
      arr << " "
    end
    (counter).times do
      # print "*"
    arr << "*" 
    # arr[-2] = " "
    end
    arr[-2, counter] = " "
  p arr
    counter += 2
   puts "\n"
  end
end
  
diamond(9)

#   *
#  * *
# *   *
#  * *
#   *

# diamonds(3)
# diamonds(5)
# diamonds(9)
# diamonds(21)