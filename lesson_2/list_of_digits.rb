def digit_list(num)
  array = num.to_s.split("")
  array.map {|i| i.to_i}
end

puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)

