# def is_odd?(number)
#   if number%2 != 0
#   puts number 
#   else puts "Not an odd number"
#   end
# end

def is_odd?(number)
  if number.remainder(2) != 0
  puts number
  else
  puts "Not an odd number"
  end
end


puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)