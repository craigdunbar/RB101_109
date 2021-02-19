# def joinor(arr, separator =', ', word ='or')
#   elements = arr.size
#   string = ''
#   counter = 1
#   string << "#{arr[0]}"
#   loop do 
#     break if counter == elements - 1
#   string << "#{separator}#{arr[counter]}#{separator}"
#     counter += 1
#   end
#   string << "#{word} #{arr[elements - 1]}"
#   p string
# end
# my solution fails the first test and displays "1or 2". I cant find a way to fix that yet.

#second try
# def joinor(arr, sep=', ', word='or')
#   if arr.size < 2
#     arr.join(sep)
#   else
#     last_item = arr.pop
#     arr.join(sep) + sep + word + ' ' + "#{last_item}"
#   end
# end
#ugh same issue...

# LS solution

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
  arr[-1] = "#{word} #{arr.last}"
  arr.join(delimiter)
  end
end


p joinor([1, 2])                   ==  "1 or 2"
p joinor([1, 2, 3])                ==  "1, 2, or 3"
p joinor([1, 2, 3], '; ')          ==  "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   ==  "1, 2, and 3"