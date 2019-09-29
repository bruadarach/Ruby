# Methods - clean and quick way to refer to a same code again and again
#           find a more efficient way

puts "Hey Programmers!"
puts "What's for dinner?"

# if it is repetitive...
puts "Hey Programmers!"
puts "What's for dinner?"

puts "Hey Programmers!"
puts "What's for dinner?"

puts "Hey Programmers!"
puts "What's for dinner?"

# 1. Defining a method... (before you call a method, nothing will happend)
def sayMessage
    puts "Hey Programmers!"
    puts "What's for dinner?"
end

# 2. Call this method (how to call? say the name of the method, then, will print out the message )
sayMessage 
# Hey Programmers!
# What's for dinner?


sayMessage 
sayMessage 
sayMessage 
# Hey Programmers!
# What's for dinner?
# Hey Programmers!
# What's for dinner?
# Hey Programmers!
# What's for dinner?

puts "before the method call"
sayMessage
puts "after the method call"
#before the method call
# Hey Programmers!
# What's for dinner?
# after the method call

