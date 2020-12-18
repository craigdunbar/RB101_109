# --- Example 2

# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
# end
# # 1
# # 3
# # => [nil, nil]

# Line 	    Action 	                Object 	        Side Effect 	      Return Value 	                    Is Return Value Used?
# 1 	    method call (map) 	  The outer array 	  None 	              New array [nil, nil] 	            No, but shown on line 6
# 1-3 	  block execution 	    Each sub-array 	    None      	        nil 	                            Yes, used by map for transformation
# 2 	    method call (first) 	Each sub-array 	    None 	              Element at index 0 of sub-array 	Yes, used by puts
# 2 	    method call (puts)  	Element at index 0  Outputs a string  	nil 	                            Yes, used to determine return value of block
#                               0 of each sub-array  representation of 
#                                                     an integer
                                                    

# --- Example 3
# [[1, 2], [3, 4]].map do |arr|
#   puts arr.first
#   arr.first
# end
# # 1
# # 3
# #=> [1,3]

# Line 	    Action 	                Object 	                              Side Effect 	      Return Value 	                      Is Return Value Used?
# 1       method call (map)       the outer array                         none                new array                                No
# 1-4     block execution 	      Each sub-array 	                        None 	              Integer at index 0 of sub-array 	Yes, used by map for transformation
# 2       mehod call (first)      element at index 0 of each sub array    none                element at index 0 of sub array      yes, used by puts
# 2       method call (puts)      element at index 0 of each sub array    outputs string               nil                              no
# 3       mehod call (first)      element at index 0 of each sub array    none                element at index 0 of sub array      yes, return value of the block

# --- Example 4

# my_arr = [[18, 7], [3, 12]].each do |arr|
#   arr.each do |num|
#     if num > 5
#       puts num
#     end
#   end
# end
# 18
# 7
# 12
#=> [[18,7], [3,12]]

# Line 	    Action 	                Object 	                              Side Effect 	      Return Value 	                      Is Return Value Used?
# 1 - 7     block execution         my_arr                                none                original Array                      no
# 1         method call (each)     my_arr                                 none                sub array                          yes by each on line 2
# 2         method call (each)     arr                                    none                array element                       yes by if statement
# 3 - 6     conditional            array element                        selection             num > 5                             yes by puts
# 4         method call (puts)     array element                          prints string       nil                                 yes return value of the block

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end
