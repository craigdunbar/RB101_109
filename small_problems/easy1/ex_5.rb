# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence(string)
new_string = string.split.reverse.join(' ')
puts new_string
end

reverse_sentence('Hello World')