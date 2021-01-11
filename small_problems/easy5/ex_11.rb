
# Spin Me Around In Circles

# You are given a method named spin_me that takes a string as an argument 
# and returns a string that contains the same words, but with each word's characters reversed. 
# Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# returned string will be the same string but reversed since we are using each but the reverse is destructive. - nope.
# str.split makes a new array so the initial object is not returned..use object_id to show this
str = "hello world"
puts str.object_id # 47435609148580
puts spin_me(str).object_id # 47435609148360
