# Practice Problem 8

# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog'] }
vowels = []
# counter = 0
hsh.each_value do |value|
  value.each do |word|
    word.chars.each do |letter|
      case letter
      when 'a'
        vowels << letter
      when 'e'
        vowels << letter
      when 'i'
        vowels << letter
      when 'o'
        vowels << letter
      when 'u'
        vowels << letter
      end
    end
  end
end
p vowels
