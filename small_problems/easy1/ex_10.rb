# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. 
# If the boolean is false, the bonus should be 0.

def calculate_bonus(salary, bonus)
  if  bonus == true
    amount = salary/2
  else  
    amount = 0
  end
  puts "Your bonus is #{amount}!"
end  

calculate_bonus(2800, true) #1400
calculate_bonus(1000, false) #== 0

# ls solution
# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end