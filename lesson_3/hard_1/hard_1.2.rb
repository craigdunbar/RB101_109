greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there' # modifys the greeting object

puts informal_greeting  #  => "hi there"
puts greetings # => {:a=>"hi there"}
