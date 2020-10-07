# given an array of elements, identify each elemnt and count each occurance of the element

# start at index zero and store the value
# iterate through the array and count how many occurances of this value.
# move to the next element
# if this element is the same as the last element move to next elemnt
# repeat until a new value is found then store this value and count the number of occurrances
# repeat until all the unique values have been found and counted

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
def count_occurrences(vehicles)
 occurrences = Hash.new(0) # make the hash default to 0 so that += will work correctly
 vehicles.each do |v|# iterate over the array, counting duplicate entries
  occurrences[v] += 1
  end

  occurrences.each do |k, v|
  puts "#{k} appears #{v} times"
  end
end
count_occurrences(vehicles)