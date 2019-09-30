# Methods - quickly refer to a code again and again

"""
# Defining a method
def sayMessage
    puts 'Hey Programmers!'
    puts 'What's for lunch?'
end

# Call this method
sayMessage
"""

# Defining a method
# To make my code more dynamcic, make this code to take some data!
# How to do? put parameters
def say_hello(person) # single parameter
    puts "Hello! " + person + "."
end

# Call this method
say_hello("Mike") # String # Hello! Mike.
say_hello("Lucky") # Hello! Mike.

# Take more than one parameters
def say_hello(person1, person2)
    puts "Hello! " + person1 +" and " + person2 + "."
end

# Call this method
say_hello("Mike", "Lucky") # String # Hello! Mike and Lucky. # Order of parameters matters
say_hello("Dave", "Cas") # Hello! Dave and Cas.