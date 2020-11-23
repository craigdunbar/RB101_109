# def xor?(param1, param2)
#   if param1 == true && param2 == false
#     puts "true"
#   elsif param1 == true && param2 == true
#     puts "false"
#   elsif param1 == false && param2 == false
#     puts "false"
#   else param1 == false && param2 == true
#     puts "true"
#   end
# end

# LS solution

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

def xor?(value1, value2)
  ((value1 && !value2) || (value2 && !value1))
end

 p xor?(5.even?, 4.even?) == true
 p xor?(5.odd?, 4.odd?) == true
 p xor?(5.odd?, 4.even?) == false
 p xor?(5.even?, 4.odd?) == false
 