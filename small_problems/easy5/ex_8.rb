# Alphabetical Numbers

# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

def alphabetic_number_sort(array)
  number_to_word = {    19=>"nineteen",
      18=>"eighteen", 17=>"seventeen", 16=>"sixteen", 15=>"fifteen",
      14=>"fourteen", 13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 
      9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five",
      4 => "four", 3 => "three", 2 => "two", 1 => "one", 0 => "zero"
  }
  counter = 0
  word_arr = []
  num_arr = []
  loop do
    break if counter == array.size
    current_key = array[counter]
    current_value = number_to_word[current_key]
    word_arr << current_value
    counter += 1
  end
  sort_arr = word_arr.sort
  count = 0
  loop do
    break if count == word_arr.size
  num_arr << number_to_word.key(sort_arr[count])
    count += 1
  end
  p num_arr
end

 p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0]
