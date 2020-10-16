# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

def digit_list(num)
 array = num.to_s.split('') # convert num to a string, then split into an array of strings
 array = array.map{|i| i.to_i} # use map to convert each element in array from strings to integer map(&:to_i) would do the same
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true