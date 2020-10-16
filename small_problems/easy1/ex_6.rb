# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with words that contain five or more characters reversed. 
# Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.


def reverse_words(string)
  words = []
  array = string.split
  array.each do |word|
    if word.length >= 5 
      word.reverse!
      words.push
    end
  end
  puts array.join(' ')
end

reverse_words('Walk around the block')