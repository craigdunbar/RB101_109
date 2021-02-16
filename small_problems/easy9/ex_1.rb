
# -----------------------INSTRUCTIONS--------------------------------------

# Welcome Stranger

# Create a method that takes 2 arguments, an array and a hash. T
# he array will contain 2 or more elements that, when combined with adjoining spaces, 
# will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Y
# our method should return a greeting that uses the person's full name, and mentions the person's title and occupation.
# --------------------------PROBLEM----------------------------------------

# Input: array and a hash
# Output: string 
# ---------------------------RULES-----------------------------------------
# Explicit: string contains the array joined with spaces, and the two values from the hash

# Implicit: 

# --------------------------EXAMPLES---------------------------------------
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# ----------------------------ALGO----------------------------------------
# define method with array and hash arg
# use arr join to make the name string
# use key[value] and string interpolation to add the values form the hash


def greetings(array, hash)
  name = array.join(' ')
  job1 = hash[:title]
  job2 = hash[:occupation]
  p "Hello, #{name}! Nice to have a #{job1} #{job2} around!"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) 
#=>  Hello, John Q Doe! Nice to have a Master Plumber around.
