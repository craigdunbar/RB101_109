
# Bannerizer

# Write a method that will take a short line of text, and print it within a box.
# You may assume that the input will always fit in your terminal window.

# My soultion - I couldn't get the the string concatenation to work properly so i used arrays

def dash_line(string)
  length = string.size
  line = ["+"]
  length.times {|i| line << "-"}
  line << "+"
  p line.join("")
end

def blank_line(string)
  length = string.size
  blank_line = ["|"]
  length.times {|i| blank_line << " "}
  blank_line << "|"
  p blank_line.join("")
end  

def text_line(string)
  text_line = ["|"]
  text_line << string.chars
  text_line << "|"
  p text_line.join("")
end

def print_in_box(string)
  string = string.center(string.length+2)
  dash_line(string)
  blank_line(string)
  text_line(string)
  blank_line(string)
  dash_line(string)
end

 print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# LS Solution

def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end