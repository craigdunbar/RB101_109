=begin
-----------------------INSTRUCTIONS--------------------------------------

Staggered Caps (Part 1)


Staggered Caps (Part 2)

Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether 
it should uppercase or lowercase each letter. 
The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.
--------------------------PROBLEM----------------------------------------

Input:  string
Output: string 
---------------------------RULES-----------------------------------------
Explicit: startng with chr at index 0 capialize every other character
        non-letter chars remain the same and are not counted
Implicit: 

--------------------------EXAMPLES---------------------------------------
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

----------------------------ALGO----------------------------------------
define method with string arg
turn full string to downcase
split string into chars 
iterate through the string array with map and change ebery  even chr.capitalised

=end

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result += char
      next
    elsif need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'


# further exploration ----> need to review

# def staggered_case(string)
#   arr = string.downcase.chars.each_with_index do |str, i|
#     if i.even? 
#       str.upcase!
#     else
#         str
#     end
#   end
# arr.join 
# end

# def staggered_case_non_alphabetic(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[^A-Za-z]/
#       result += char
#       next
#     elsif need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# def staggered_case_non_alphabetic(string, non_alphabetic)
#   non_alphabetic ? staggered_case(string) : staggered_case_non_alphabetic(string)
# end

# p staggered_case_non_alphabetic('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case_non_alphabetic('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
