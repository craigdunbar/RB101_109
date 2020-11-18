# # ---- Question 2

# # The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

# # Why is this and what are two possible ways to fix this?
# # cant concatentate a string to an integer(40+2) returns an integer

puts "the value of 40 + 2 is #{40 + 2}"
# # or
puts "the value of 40 + 2 is" (40 + 2).to_s