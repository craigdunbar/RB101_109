
# Squaring an Argument

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

# Example:

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# further exploration
# to use n to the power..

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_of_n(power, n)
  product = 1
  power.times {product = multiply(n, product)}
  product
end

p square(3) == 9
p power_of_n(3,3) == 27
