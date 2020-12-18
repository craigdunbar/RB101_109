# Have a read through the Ruby Documentation for String#<=>. 
# Without running the code, try to figure out what would be returned here:

['arc', 'bat', 'cape', 'ants', 'cap'].sort

# Ruby docs...
# string <=other_string → -1, 0, +1, or nil

# Comparison—Returns -1, 0, +1, or nil depending on whether string is less than, equal to, or greater than other_string.

# nil is returned if the two values are incomparable.

# If the strings are of different lengths, and the strings are equal when compared up to the shortest length, 
# then the longer string is considered greater than the shorter one.

# my answer is:
# ['arc', 'ants', 'bat', 'cap', 'cape'] -- WRONG!!

# => ["ants", "arc", "bat", "cap", "cape"]

# Although the documentation doesn't explicitly state this, 
# String#<=> compares multi-character strings character by character, 
# so the strings beginning with 'a' will come before those beginning with 'b'; 
# if both characters are the same then the next characters in the strings are compared, and so on.

# In the case of 'cap' and 'cape', the comparable characters are all equal, but 'cape' is longer and so is considered greater by String#<=>.

# There is also an Array#<=> 
# method. Have a read of the Ruby Docs and see if you can work out what would be returned when sort is called on this array of arrays:

# [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].

# [['a', 'car', 'd'],['a', 'car', 'd', 3] ,[ 'a', 'cat', 'b', 'c'], ['b', 2]]

# ary <=> other_ary → -1, 0, +1 or nil 

# Comparison — Returns an integer (-1, 0, or +1) if this array is less than, equal to, or greater than other_ary.

# Each object in each array is compared (using the <=> operator).

# Arrays are compared in an “element-wise” manner; 
# the first element of ary is compared with the first one of other_ary using the <=> operator, 
# then each of the second elements, etc… 
# As soon as the result of any such comparison is non zero (i.e. the two corresponding elements are not equal), 
# that result is returned for the whole array comparison.

# If all the elements are equal, then the result is based on a comparison of the array lengths. 
# Thus, two arrays are “equal” according to Array#<=> 
# if, and only if, they have the same length and the value of each element is equal to the value of the corresponding element in the other array.

# nil is returned if the other_ary is not an array or if the comparison of two elements returned nil.
# my answer
# [['a', 'car', 'd'],['a', 'car', 'd', 3] ,[ 'a', 'cat', 'b', 'c'], ['b', 2]]
# LS solution
# => [["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]