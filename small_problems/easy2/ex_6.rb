# # Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.
# num = 0
# while num <= 100
#   if num.odd? 
#     puts num
#   end
#   num += 1
# end

num = 0
until num == 100
  if num%2 == 1
  puts num
  end
  num += 1
end