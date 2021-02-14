=begin
-----------------------INSTRUCTIONS--------------------------------------

Madlibs

Mad libs are a simple game where you create a story template with blanks for words. 
You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create
--------------------------PROBLEM----------------------------------------

Input: 4 values form the user
Output: string containing the 4 values
---------------------------RULES-----------------------------------------
Explicit:need to get a noun, verb, adjetive and adverb

Implicit: 

--------------------------EXAMPLES---------------------------------------
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

----------------------------ALGO----------------------------------------
define method without args
use puts to display the required entry
initalise a variable with input and  gets.chomp 
repeat for all entries

add inputs to the string using string interpolation
=end

  puts "Enter a noun: "
  noun = gets.chomp
  puts "Enter a verb: "
  verb = gets.chomp
  puts "Enter an adjective"
  adj = gets.chomp
  puts "Enter an adverb"
  adv = gets.chomp
  
  puts "Do you #{verb} your #{adv} #{noun} #{adj}? That's funny!"