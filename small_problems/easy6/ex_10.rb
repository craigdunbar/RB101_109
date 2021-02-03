=begin
-----------------------INSTRUCTIONS--------------------------------------
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
The hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, and the other end at the upper-right.
--------------------------PROBLEM----------------------------------------

Input: positive integer 
Output: lines containing spaces and stars, 
---------------------------RULES-----------------------------------------
Explicit: positive integer as arg, diagonal line goes from bottom left to top right

Implicit: 

--------------------------EXAMPLES---------------------------------------
triangle(5)
    
    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

----------------------------ALGO----------------------------------------
define methos with integer arg
initalise a counter
initalise a loop 
use counter to start creating the lines
use puts to display the lines
first line is (counter - 1 )" " and 1 *
second line is (couunter - 2) " " and 2 *
last line is counter *
end loop
=end

# def triangle(n)
#   space = n - 1
#   stars = 1
#   loop do
#       break if stars == n+1
#     puts (' '* space) + ('*'* stars)
#     space -= 1
#     stars += 1
#   end
# end

# LS solution
def triangle(num)
  spaces = num - 1
  stars = 1
  num.times do |n|
    puts (' '*spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

#Upside down triangle
def triangle(num)
  
puts "On which side do you want the right angle? (top left, top right, bottom left  or bottom right?)"
answer = gets.chomp.downcase
  spaces = 0
  stars = num
  
  bottom_spaces = num - 1
  bottom_stars = 1
  
  if answer == 'top right'
    num.times do |n|
      puts (' ' * spaces) + ('*' * stars) 
      stars -= 1
      spaces += 1
    end
  elsif answer == 'top left'
    num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    stars -= 1
    spaces += 1
    end
  elsif answer == 'bottom left'
    num.times do |n|
    puts ('*' * bottom_stars) + (' ' * bottom_spaces)
    bottom_spaces -= 1
    bottom_stars += 1
    end
  else answer == 'bottom right'
    num.times do |n|
    puts (' ' * bottom_spaces) +  ('*' * bottom_stars)
    bottom_spaces -= 1
    bottom_stars += 1
    end
  end
end
  
triangle(5)