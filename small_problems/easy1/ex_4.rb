# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  occurrences = Hash.new(0)
  vehicles.each do |v|
    occurrences[v] += 1
  end

  occurrences.each do |k, v|
    puts "#{k} appears #{v} times"
  end
end

count_occurrences(vehicles)

# ls solution
# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# count_occurrences(vehicles)
