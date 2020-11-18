# -- QUESTION 1 ---

# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# # this prints out: 
# 1
# 2
# 2
# 3
# as uniq is not destructive.
# Also puts method automatically calls to_s on its argument, whichnis why it prints like this.
# the p method automatically calls inspect on its argument which would have printed ot [1, 2, 2, 3]

# -- QUESTION 2 ---

Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

    what is != and where should you use it?
    # not equal too, use it for comparison
    
    put ! before something, like !user_name
    # makes it a not 
    put ! after something, like words.uniq!
    #usually indicates destructive method
    put ? before something
    # ternary operator
    put ? after something
    # part of method name
    put !! before something, like !!user_name
    # is used to turn any object into their boolean equivalent
    
#---Question 3 ---

# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
array = advice.split
array[6] = 'urgent'
array.join(' ')

# LS solution
advice.gsub!('important', 'urgent')

# --- Question 4

# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
# deletes the element at index 1 => '2'
numbers.delete(1)
# deletes the element whose value is '1'

# ---Question 5

# Programmatically determine if 42 lies between 10 and 100.
(10..100).include?(42)

# LS solution
(10..100).cover?(42)
# cover is in the range class

# --- Question 6

# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

p famous_words.prepend("Four score and ")
puts "Four score and " + famous_words

#--- Question 7

# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.
flintstones.flatten!

# ----Question 8

# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number
# LS solution
flintstones.assoc("Barney")