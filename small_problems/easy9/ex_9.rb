
=begin
-----------------------INSTRUCTIONS--------------------------------------

Grade book

Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.
Numerical Score Letter 	Grade
90 <= score <= 100 	'A'
80 <= score < 90 	'B'
70 <= score < 80 	'C'
60 <= score < 70 	'D'
0 <= score < 60 	'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
--------------------------PROBLEM----------------------------------------

Input: three integers
Output: string
---------------------------RULES-----------------------------------------
Explicit: take the average of the three integers ans return the corresponding string letter
          values are between 0 and 100
Implicit: 

--------------------------EXAMPLES---------------------------------------
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

----------------------------ALGO----------------------------------------
define method with 3 integers as arg
get the sum of the 3 intgers, then get average
use case statement to print the grade
=end

def get_grade(first, second, third)
  average = (first + second + third)/ 3
  # case 
  #   when average >= 90 && average <= 100 	
  #   grade = 'A'
  #   when average >= 80 && average < 90 	
  #     grade = 'B'
  #   when average >= 70 && average < 80 	
  #     grade = 'C'
  #   when average >= 60 &&  average < 70 	
  #     grade = 'D'
  #   when average >= 0 && average < 60 	
  #     grade = 'F'
  # end
  # grade
  case average
  when 100.. then 'Extra merit'
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(200, 90, 93) == "Extra merit"