# # ---- Question 1

# # Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# # For this practice problem, write a one-line program that creates the following output 10 times, 
# # with the subsequent line indented 1 space to the right:

# # The Flintstones Rock!
# # The Flintstones Rock!
# #   The Flintstones Rock!

counter = 20
while counter <= 41 do
  counter += 1
  puts "The Flintstones rock!".rjust(counter)
end
# # I didn't read the one line instruction
# # LS solution
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
