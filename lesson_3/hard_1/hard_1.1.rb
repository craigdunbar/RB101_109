if false
  greeting = “hello world”
end

p greeting

# i expected an error as the greeting variable was initiated inside the if statement but i got nil
# LS soluition
# greeting is nil here, and no "undefined method or local variable" exception is thrown. 
# Typically, when you reference an uninitialized variable, 
# Ruby will raise an exception, stating that it’s undefined. 
# However, when you initialize a local variable within an if block, even if that if block doesn’t get executed, 
# the local variable is initialized to nil.
